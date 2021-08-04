import 'package:dio/dio.dart';
import 'package:video_player/video_player.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youtube_player_with_riverpod/repositories/custom_exception.dart';
import '/search/search.dart';

final selectedVideo = ScopedProvider<Video?>(null);
final urlProvider = StateProvider<String?>((ref) => null);
final videoStateProvider =
    StateProvider<videoState>((ref) => videoState.loading);
enum videoState {
  loading,
  error,
  playing,
}
final playerControllerProvider =
    StateNotifierProvider.autoDispose<VideoController, VideoPlayerController?>(
        (ref) {
  final url = ref.watch(urlProvider).state;
  if (url != null) {
    return VideoController(ref.read, url: url)..initiateWithUrl();
  }
  return VideoController(ref.read, url: null);
});

class VideoController extends StateNotifier<VideoPlayerController?> {
  final Reader _read;
  final String? url;
  VideoController(
    this._read, {
    required this.url,
  }) : super(url == null ? null : VideoPlayerController.network(url)) {
    // if (url != null) {
    //   state = state..initialize().whenComplete(() => null)
    // }
  }

  @override
  void dispose() {
    state?.dispose();
    super.dispose();
  }

  void initiateWithUrl() async {
    print("Changing state url: $url");
    var dio = Dio();
    Response response =
        await dio.get("https://you-link.herokuapp.com/?url=$url");
    print("hello\nhttps://you-link.herokuapp.com/?url=$url");
    print(response.data);
    state = state!
      ..initialize().whenComplete(
        () {
          _read(videoStateProvider).state = videoState.playing;
        },
      ).onError((error, stackTrace) {
        _read(videoStateProvider).state = videoState.error;
        _read(exceptionProvider).state =
            CustomException(message: "Sorry, bad url!");
      });
  }
}
