import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'YoutubeVideoModel.dart';

part 'YoutubeSearchResultsModel.freezed.dart';
part 'YoutubeSearchResultsModel.g.dart';

@freezed
class YoutubeSearchResult with _$YoutubeSearchResult {
  const factory YoutubeSearchResult({
    required String kind,
    required String etag,
    required String nextPageToken,
    required String regionCode,
    required PageInfo pageInfo,
    List<Video>? items,
  }) = _YoutubeSearchResult;
  factory YoutubeSearchResult.fromJson(Map<String, dynamic> json) =>
      _$YoutubeSearchResultFromJson(json);
  
}

@freezed
class PageInfo with _$PageInfo {
  const factory PageInfo({
    required int totalResults,
    required int resultsPerPage,
  }) = _PageInfo;
  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);
}
