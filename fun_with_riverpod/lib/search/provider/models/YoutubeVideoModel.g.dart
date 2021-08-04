// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'YoutubeVideoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Video _$_$_VideoFromJson(Map<String, dynamic> json) {
  return _$_Video(
    kind: json['kind'] as String?,
    etag: json['etag'] as String?,
    id: json['id'] == null
        ? null
        : Id.fromJson(json['id'] as Map<String, dynamic>),
    snippet: json['snippet'] == null
        ? null
        : Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'id': instance.id,
      'snippet': instance.snippet,
    };

_$_Id _$_$_IdFromJson(Map<String, dynamic> json) {
  return _$_Id(
    kind: json['kind'] as String,
    videoId: json['videoId'] as String,
  );
}

Map<String, dynamic> _$_$_IdToJson(_$_Id instance) => <String, dynamic>{
      'kind': instance.kind,
      'videoId': instance.videoId,
    };
