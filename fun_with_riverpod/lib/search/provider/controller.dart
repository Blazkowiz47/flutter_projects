import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'models/models.dart';
import '/repositories/repository.dart';

/// Creates a [VideoListController] and initialise it with pre-defined values.
///
/// We are using [StateNotifierProvider] here as a `List<Movie>` is a complex
/// object, with advanced business logic like how to edit a todo.
final queryResultProvider =
    StateNotifierProvider<VideoListController, AsyncValue<List<Video>>>((ref) {
  return VideoListController(ref.read);
});

final isSearchSubmitted = StateProvider<bool>((ref) => false);

/// An object that controls a list of [Movie].
/// Actual brain.
/// Modifies the state variables.
class VideoListController extends StateNotifier<AsyncValue<List<Video>>> {
  final Reader _read;
  String lastQuery = "";
  String pageToken = "";
  bool isAppStarted = true;
  bool isGettingMoreVideos = false;

  /// Initial value of list is null
  VideoListController(this._read) : super(AsyncValue.loading());
  @override
  void dispose() {
    super.dispose();
    state = AsyncValue.loading();
  }

  void clear() {
    state = AsyncValue.data([]);
  }

  void remove(Video target) {
    try {
      state.whenData((videoList) {
        if (videoList.length > 0) {
          state = AsyncValue.data(
              videoList..removeWhere((video) => video.id == target.id));
        }
        if (videoList.length < 1) {
          isGettingMoreVideos = true;
          getSearchResultsForKeyword(
            query: lastQuery,
            previousPageToken: pageToken,
          );
        }
      });
    } on CustomException catch (e) {
      state = AsyncValue.error(e);
      _read(exceptionProvider).state = e;
    }
  }

  void getSearchResultsForKeyword({
    required String query,
    bool isRefreshing = false,
    String? previousPageToken,
  }) async {
    isAppStarted = false;
    if (isRefreshing || previousPageToken == null) state = AsyncValue.loading();
    try {
      print("Going to fetch results");
      lastQuery = query;
      final YoutubeSearchResult searchResult =
          await _read(youtubeRepositoryProvider).fetchVideosKeywordSearchQuery(
        query: query,
        pageToken: previousPageToken,
        maxResults: 10,
      );
      print("Fetched results: ${searchResult.toJson().toString()}");
      if (mounted) {
        isGettingMoreVideos = false;
        if (searchResult.items == null)
          state = AsyncValue.error("No Videos Found");
        else {
          pageToken = searchResult.nextPageToken;
          if (state is AsyncData) {
            state.whenData((videoList) {
              state =
                  AsyncValue.data(videoList..addAll(searchResult.items ?? []));
            });
          } else
            state = AsyncValue.data(searchResult.items ?? []);
        }
      }
    } on CustomException catch (e) {
      state = AsyncValue.error("e");
      _read(exceptionProvider).state = e;
    }
  }
}
