import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/search/search.dart';

class VideoList extends HookWidget {
  const VideoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final videoList = useProvider(queryResultProvider);
    final bool isGettingNewVideos =
        useProvider(queryResultProvider.notifier).isGettingMoreVideos;
    return videoList.when(
      data: (videoList) {
        print("Data");
        return ListView(
          children: [
            for (var i = 0; i < videoList.length; i++) ...[
              if (i > 0) const Divider(height: 1),
              if (i > 0) const SizedBox(height: 5),
              Dismissible(
                key: ValueKey(videoList[i].id),
                onDismissed: (_) {
                  context
                      .read(queryResultProvider.notifier)
                      .remove(videoList[i]);
                },
                child: ProviderScope(
                  overrides: [
                    currentVideo.overrideWithValue(videoList[i]),
                  ],
                  child: const VideoItem(),
                ),
              )
            ],
            SizedBox(
              height: 20,
            ),
            isGettingNewVideos
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Container(),
          ],
        );
      },
      loading: () {
        print("Loading");
        if (context.read(queryResultProvider.notifier).isAppStarted) {
          return Center(
            child: Text("Enter the search query"),
          );
        }
        return Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        );
      },
      error: (e, s) {
        print("Error");
        return Center(
          child: Text(
            "Something went wrong ! Please try again.",
            softWrap: true,
          ),
        );
      },
    );
  }
}
