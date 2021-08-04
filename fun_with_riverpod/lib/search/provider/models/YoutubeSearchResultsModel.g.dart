// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'YoutubeSearchResultsModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_YoutubeSearchResult _$_$_YoutubeSearchResultFromJson(
    Map<String, dynamic> json) {
  return _$_YoutubeSearchResult(
    kind: json['kind'] as String,
    etag: json['etag'] as String,
    nextPageToken: json['nextPageToken'] as String,
    regionCode: json['regionCode'] as String,
    pageInfo: PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    items: (json['items'] as List<dynamic>?)
        ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_YoutubeSearchResultToJson(
        _$_YoutubeSearchResult instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'nextPageToken': instance.nextPageToken,
      'regionCode': instance.regionCode,
      'pageInfo': instance.pageInfo,
      'items': instance.items,
    };

_$_PageInfo _$_$_PageInfoFromJson(Map<String, dynamic> json) {
  return _$_PageInfo(
    totalResults: json['totalResults'] as int,
    resultsPerPage: json['resultsPerPage'] as int,
  );
}

Map<String, dynamic> _$_$_PageInfoToJson(_$_PageInfo instance) =>
    <String, dynamic>{
      'totalResults': instance.totalResults,
      'resultsPerPage': instance.resultsPerPage,
    };
