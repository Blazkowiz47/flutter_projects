import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youtube_player_with_riverpod/key.dart';
import '/repositories/repository.dart';
import '/search/search.dart';

abstract class BaseYoutubeRepository {
  Future<YoutubeSearchResult> fetchVideosKeywordSearchQuery({
    required String query,
  });
  Future<YoutubeSearchResult> fetchChannelsForSearchQuery({
    required String query,
  });
  Future<YoutubeSearchResult> fetchCommentsForVideo({
    required String videoId,
  });
}

Map<String, dynamic> queries = {
  "maxResults": 5,
  "type": "video",
  "key": youtubeApiKey,
};
const String _baseUrl =
    "https://youtube.googleapis.com/youtube/v3/search?part=snippet";

/// With this we can access youtube repository across the app
final youtubeRepositoryProvider =
    Provider<YoutubeApiRepository>((ref) => YoutubeApiRepository(ref.read));

/// Defining youtube repository
class YoutubeApiRepository implements BaseYoutubeRepository {
  final Reader _read;
  const YoutubeApiRepository(this._read);

  @override
  Future<YoutubeSearchResult> fetchChannelsForSearchQuery({
    required String query,
    int maxResults = 5,
  }) async {
    // TODO: implement fetchVideosKeywordSearchQuery
    throw CustomException(message: "Not Implemented");
  }

  @override
  Future<YoutubeSearchResult> fetchCommentsForVideo({
    required String videoId,
    int maxResults = 5,
  }) {
    // TODO: implement fetchCommentsForVideo
    throw CustomException(message: "Not Implemented");
  }

  @override
  Future<YoutubeSearchResult> fetchVideosKeywordSearchQuery({
    required String query,
    String? pageToken,
    int maxResults = 5,
  }) async {
    try {
      Response response;
      var dio = Dio();
      queries["part"] = "snippet";
      queries["type"] = "video";
      queries["q"] = query;
      queries["maxResults"] = maxResults;
      if (pageToken != null) queries["pageToken"] = pageToken;

      // Optionally the request above could also be done as
      response = await dio.get(
        _baseUrl,
        queryParameters: queries,
      );

      YoutubeSearchResult youtubeSearchResult =
          YoutubeSearchResult.fromJson(response.data);

      return youtubeSearchResult;
    } catch (e) {
      print(e.toString());
      throw CustomException(
        message: "Some error in retrieving data.\n(${e.toString()})",
      );
    }
  }
}

class MockYoutubeRepository implements BaseYoutubeRepository {
  final Reader _read;
  const MockYoutubeRepository(this._read);

  @override
  Future<YoutubeSearchResult> fetchChannelsForSearchQuery({
    required String query,
  }) {
    // TODO: implement fetchChannelsForSearchQuery
    throw CustomException(message: "Not Implemented");
  }

  @override
  Future<YoutubeSearchResult> fetchCommentsForVideo({
    required String videoId,
  }) {
    // TODO: implement fetchCommentsForVideo
    throw CustomException(message: "Not Implemented");
  }

  @override
  Future<YoutubeSearchResult> fetchVideosKeywordSearchQuery({
    required String query,
  }) {
    // TODO: implement fetchVideosKeywordSearchQuery
    throw CustomException(message: "Not Implemented");
  }
}
