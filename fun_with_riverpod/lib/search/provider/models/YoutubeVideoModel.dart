import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'YoutubeVideoSnippet.dart';
part 'YoutubeVideoModel.freezed.dart';
part 'YoutubeVideoModel.g.dart';

@freezed
class Video with _$Video {
  const factory Video({
    required String? kind,
    required String? etag,
    required Id? id,
    required Snippet? snippet,
  }) = _Video;
  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}

@freezed
class Id with _$Id {
  const factory Id({
    required String kind,
    required String videoId,
  }) = _Id;
  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);
}
