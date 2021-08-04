import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_player/video_player.dart';
import '/search/search.dart';
import '/player/player.dart';

/// A provider which exposes the [Todo] displayed by a [VideoItem].
///
/// By retreiving the [Todo] through a provider instead of through its
/// constructor, this allows [VideoItem] to be instantiated using the `const` keyword.
///
/// This ensures that when we add/remove/edit todos, only what the
/// impacted widgets rebuilds, instead of the entire list of items.
final currentVideo = ScopedProvider<Video>(null);

class VideoItem extends HookWidget {
  const VideoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final video = useProvider(currentVideo);
    final itemFocusNode = useFocusNode();
    print("Rebuilding Video Item : ${video.snippet!.title}");
    // listen to focus chances
    useListenable(itemFocusNode);
    final isFocused = itemFocusNode.hasFocus;

    return Material(
      color: Colors.white,
      elevation: 6,
      child: ListTile(
        focusNode: itemFocusNode,
        focusColor: Colors.blue[100],
        selectedTileColor: Colors.blue,
        onTap: () {
          print(
              "\n\n\nhttps://www.youtube.com/watch?v=${video.id!.videoId}\n\n\n");
          itemFocusNode.requestFocus();
          context.read(urlProvider).state =
              "https://www.youtube.com/watch?v=${video.id!.videoId}";
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProviderScope(
                overrides: [
                  selectedVideo.overrideWithValue(video),
                ],
                child: const Player(),
              ),
            ),
          );
        },
        onLongPress: () {
          if (!isFocused) {
            itemFocusNode.requestFocus();
          }
        },
        title: Text(
          video.snippet!.title,
          style: TextStyle(
            color: isFocused ? Colors.blue : Colors.black,
          ),
        ),
        subtitle: Text(
          video.snippet!.description,
          softWrap: true,
        ),
        isThreeLine: true,
        leading: Image.network(
          video.snippet!.thumbnails.byDefault.url,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return CircularProgressIndicator.adaptive(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            );
          },
          errorBuilder: (context, error, stackTrace) => Text("Error"),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
