import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/player/player.dart';

class Information extends HookWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final video = useProvider(selectedVideo);
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      width: double.infinity,
      color: Colors.green,
      height: height * 0.2,
      child: ListView(
        children: [
          Text(
            video!.snippet!.title,
            softWrap: true,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            "${DateTime.parse(video.snippet!.publishedAt).difference(DateTime.now()).inDays.abs()} days before",
            softWrap: true,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "${video.snippet!.channelTitle}",
            softWrap: true,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
        
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
