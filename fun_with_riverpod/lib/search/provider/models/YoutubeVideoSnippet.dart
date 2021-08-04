import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'YoutubeVideoSnippet.freezed.dart';
part 'YoutubeVideoSnippet.g.dart';

@freezed
class Snippet with _$Snippet {
  const factory Snippet({
    required String publishedAt,
    required String channelId,
    required String title,
    required String description,
    required Thumbnails thumbnails,
    required String channelTitle,
    String? liveBroadcastContent,
    String? publishTime,
  }) = _Snippet;
  factory Snippet.fromJson(Map<String, dynamic> json) =>
      _$SnippetFromJson(json);
}

@freezed
class Thumbnails with _$Thumbnails {
  const factory Thumbnails({
    required Default byDefault,
    Default? medium,
    Default? high,
  }) = _Thumbnails;
  factory Thumbnails.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailsFromJson(json);
}

@freezed
class Default with _$Default {
  const factory Default({
    required String url,
    required int width,
    required int height,
  }) = _Default;
  factory Default.fromJson(Map<String, dynamic> json) =>
      _$DefaultFromJson(json);
}
