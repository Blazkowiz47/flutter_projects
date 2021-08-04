// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'YoutubeVideoSnippet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Snippet _$_$_SnippetFromJson(Map<String, dynamic> json) {
  return _$_Snippet(
    publishedAt: json['publishedAt'] as String,
    channelId: json['channelId'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    thumbnails: Thumbnails.fromJson(json['thumbnails'] as Map<String, dynamic>),
    channelTitle: json['channelTitle'] as String,
    liveBroadcastContent: json['liveBroadcastContent'] as String?,
    publishTime: json['publishTime'] as String?,
  );
}

Map<String, dynamic> _$_$_SnippetToJson(_$_Snippet instance) =>
    <String, dynamic>{
      'publishedAt': instance.publishedAt,
      'channelId': instance.channelId,
      'title': instance.title,
      'description': instance.description,
      'thumbnails': instance.thumbnails,
      'channelTitle': instance.channelTitle,
      'liveBroadcastContent': instance.liveBroadcastContent,
      'publishTime': instance.publishTime,
    };

_$_Thumbnails _$_$_ThumbnailsFromJson(Map<String, dynamic> json) {
  return _$_Thumbnails(
    byDefault: Default.fromJson(json['default'] as Map<String, dynamic>),
    medium: json['medium'] == null
        ? null
        : Default.fromJson(json['medium'] as Map<String, dynamic>),
    high: json['high'] == null
        ? null
        : Default.fromJson(json['high'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ThumbnailsToJson(_$_Thumbnails instance) =>
    <String, dynamic>{
      'byDefault': instance.byDefault,
      'medium': instance.medium,
      'high': instance.high,
    };

_$_Default _$_$_DefaultFromJson(Map<String, dynamic> json) {
  return _$_Default(
    url: json['url'] as String,
    width: json['width'] as int,
    height: json['height'] as int,
  );
}

Map<String, dynamic> _$_$_DefaultToJson(_$_Default instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };
