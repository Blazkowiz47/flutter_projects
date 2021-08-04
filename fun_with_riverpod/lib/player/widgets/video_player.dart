import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import '/player/player.dart';

class CustomVideoPlayer extends HookWidget {
  const CustomVideoPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final video = useProvider(selectedVideo);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height - MediaQuery.of(context).viewPadding.top,
      width: width,
      child: WebviewScaffold(
        url: "https://www.youtube.com/watch?v=${video!.id!.videoId}",
      ),
    );
  }
}
