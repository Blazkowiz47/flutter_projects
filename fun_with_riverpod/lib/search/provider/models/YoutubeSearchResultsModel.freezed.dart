// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'YoutubeSearchResultsModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YoutubeSearchResult _$YoutubeSearchResultFromJson(Map<String, dynamic> json) {
  return _YoutubeSearchResult.fromJson(json);
}

/// @nodoc
class _$YoutubeSearchResultTearOff {
  const _$YoutubeSearchResultTearOff();

  _YoutubeSearchResult call(
      {required String kind,
      required String etag,
      required String nextPageToken,
      required String regionCode,
      required PageInfo pageInfo,
      List<Video>? items}) {
    return _YoutubeSearchResult(
      kind: kind,
      etag: etag,
      nextPageToken: nextPageToken,
      regionCode: regionCode,
      pageInfo: pageInfo,
      items: items,
    );
  }

  YoutubeSearchResult fromJson(Map<String, Object> json) {
    return YoutubeSearchResult.fromJson(json);
  }
}

/// @nodoc
const $YoutubeSearchResult = _$YoutubeSearchResultTearOff();

/// @nodoc
mixin _$YoutubeSearchResult {
  String get kind => throw _privateConstructorUsedError;
  String get etag => throw _privateConstructorUsedError;
  String get nextPageToken => throw _privateConstructorUsedError;
  String get regionCode => throw _privateConstructorUsedError;
  PageInfo get pageInfo => throw _privateConstructorUsedError;
  List<Video>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeSearchResultCopyWith<YoutubeSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeSearchResultCopyWith<$Res> {
  factory $YoutubeSearchResultCopyWith(
          YoutubeSearchResult value, $Res Function(YoutubeSearchResult) then) =
      _$YoutubeSearchResultCopyWithImpl<$Res>;
  $Res call(
      {String kind,
      String etag,
      String nextPageToken,
      String regionCode,
      PageInfo pageInfo,
      List<Video>? items});

  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$YoutubeSearchResultCopyWithImpl<$Res>
    implements $YoutubeSearchResultCopyWith<$Res> {
  _$YoutubeSearchResultCopyWithImpl(this._value, this._then);

  final YoutubeSearchResult _value;
  // ignore: unused_field
  final $Res Function(YoutubeSearchResult) _then;

  @override
  $Res call({
    Object? kind = freezed,
    Object? etag = freezed,
    Object? nextPageToken = freezed,
    Object? regionCode = freezed,
    Object? pageInfo = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      nextPageToken: nextPageToken == freezed
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String,
      regionCode: regionCode == freezed
          ? _value.regionCode
          : regionCode // ignore: cast_nullable_to_non_nullable
              as String,
      pageInfo: pageInfo == freezed
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
    ));
  }

  @override
  $PageInfoCopyWith<$Res> get pageInfo {
    return $PageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value));
    });
  }
}

/// @nodoc
abstract class _$YoutubeSearchResultCopyWith<$Res>
    implements $YoutubeSearchResultCopyWith<$Res> {
  factory _$YoutubeSearchResultCopyWith(_YoutubeSearchResult value,
          $Res Function(_YoutubeSearchResult) then) =
      __$YoutubeSearchResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {String kind,
      String etag,
      String nextPageToken,
      String regionCode,
      PageInfo pageInfo,
      List<Video>? items});

  @override
  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$YoutubeSearchResultCopyWithImpl<$Res>
    extends _$YoutubeSearchResultCopyWithImpl<$Res>
    implements _$YoutubeSearchResultCopyWith<$Res> {
  __$YoutubeSearchResultCopyWithImpl(
      _YoutubeSearchResult _value, $Res Function(_YoutubeSearchResult) _then)
      : super(_value, (v) => _then(v as _YoutubeSearchResult));

  @override
  _YoutubeSearchResult get _value => super._value as _YoutubeSearchResult;

  @override
  $Res call({
    Object? kind = freezed,
    Object? etag = freezed,
    Object? nextPageToken = freezed,
    Object? regionCode = freezed,
    Object? pageInfo = freezed,
    Object? items = freezed,
  }) {
    return _then(_YoutubeSearchResult(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      nextPageToken: nextPageToken == freezed
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String,
      regionCode: regionCode == freezed
          ? _value.regionCode
          : regionCode // ignore: cast_nullable_to_non_nullable
              as String,
      pageInfo: pageInfo == freezed
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubeSearchResult
    with DiagnosticableTreeMixin
    implements _YoutubeSearchResult {
  const _$_YoutubeSearchResult(
      {required this.kind,
      required this.etag,
      required this.nextPageToken,
      required this.regionCode,
      required this.pageInfo,
      this.items});

  factory _$_YoutubeSearchResult.fromJson(Map<String, dynamic> json) =>
      _$_$_YoutubeSearchResultFromJson(json);

  @override
  final String kind;
  @override
  final String etag;
  @override
  final String nextPageToken;
  @override
  final String regionCode;
  @override
  final PageInfo pageInfo;
  @override
  final List<Video>? items;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'YoutubeSearchResult(kind: $kind, etag: $etag, nextPageToken: $nextPageToken, regionCode: $regionCode, pageInfo: $pageInfo, items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'YoutubeSearchResult'))
      ..add(DiagnosticsProperty('kind', kind))
      ..add(DiagnosticsProperty('etag', etag))
      ..add(DiagnosticsProperty('nextPageToken', nextPageToken))
      ..add(DiagnosticsProperty('regionCode', regionCode))
      ..add(DiagnosticsProperty('pageInfo', pageInfo))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _YoutubeSearchResult &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.etag, etag) ||
                const DeepCollectionEquality().equals(other.etag, etag)) &&
            (identical(other.nextPageToken, nextPageToken) ||
                const DeepCollectionEquality()
                    .equals(other.nextPageToken, nextPageToken)) &&
            (identical(other.regionCode, regionCode) ||
                const DeepCollectionEquality()
                    .equals(other.regionCode, regionCode)) &&
            (identical(other.pageInfo, pageInfo) ||
                const DeepCollectionEquality()
                    .equals(other.pageInfo, pageInfo)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(etag) ^
      const DeepCollectionEquality().hash(nextPageToken) ^
      const DeepCollectionEquality().hash(regionCode) ^
      const DeepCollectionEquality().hash(pageInfo) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$YoutubeSearchResultCopyWith<_YoutubeSearchResult> get copyWith =>
      __$YoutubeSearchResultCopyWithImpl<_YoutubeSearchResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_YoutubeSearchResultToJson(this);
  }
}

abstract class _YoutubeSearchResult implements YoutubeSearchResult {
  const factory _YoutubeSearchResult(
      {required String kind,
      required String etag,
      required String nextPageToken,
      required String regionCode,
      required PageInfo pageInfo,
      List<Video>? items}) = _$_YoutubeSearchResult;

  factory _YoutubeSearchResult.fromJson(Map<String, dynamic> json) =
      _$_YoutubeSearchResult.fromJson;

  @override
  String get kind => throw _privateConstructorUsedError;
  @override
  String get etag => throw _privateConstructorUsedError;
  @override
  String get nextPageToken => throw _privateConstructorUsedError;
  @override
  String get regionCode => throw _privateConstructorUsedError;
  @override
  PageInfo get pageInfo => throw _privateConstructorUsedError;
  @override
  List<Video>? get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$YoutubeSearchResultCopyWith<_YoutubeSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) {
  return _PageInfo.fromJson(json);
}

/// @nodoc
class _$PageInfoTearOff {
  const _$PageInfoTearOff();

  _PageInfo call({required int totalResults, required int resultsPerPage}) {
    return _PageInfo(
      totalResults: totalResults,
      resultsPerPage: resultsPerPage,
    );
  }

  PageInfo fromJson(Map<String, Object> json) {
    return PageInfo.fromJson(json);
  }
}

/// @nodoc
const $PageInfo = _$PageInfoTearOff();

/// @nodoc
mixin _$PageInfo {
  int get totalResults => throw _privateConstructorUsedError;
  int get resultsPerPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageInfoCopyWith<PageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageInfoCopyWith<$Res> {
  factory $PageInfoCopyWith(PageInfo value, $Res Function(PageInfo) then) =
      _$PageInfoCopyWithImpl<$Res>;
  $Res call({int totalResults, int resultsPerPage});
}

/// @nodoc
class _$PageInfoCopyWithImpl<$Res> implements $PageInfoCopyWith<$Res> {
  _$PageInfoCopyWithImpl(this._value, this._then);

  final PageInfo _value;
  // ignore: unused_field
  final $Res Function(PageInfo) _then;

  @override
  $Res call({
    Object? totalResults = freezed,
    Object? resultsPerPage = freezed,
  }) {
    return _then(_value.copyWith(
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      resultsPerPage: resultsPerPage == freezed
          ? _value.resultsPerPage
          : resultsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PageInfoCopyWith<$Res> implements $PageInfoCopyWith<$Res> {
  factory _$PageInfoCopyWith(_PageInfo value, $Res Function(_PageInfo) then) =
      __$PageInfoCopyWithImpl<$Res>;
  @override
  $Res call({int totalResults, int resultsPerPage});
}

/// @nodoc
class __$PageInfoCopyWithImpl<$Res> extends _$PageInfoCopyWithImpl<$Res>
    implements _$PageInfoCopyWith<$Res> {
  __$PageInfoCopyWithImpl(_PageInfo _value, $Res Function(_PageInfo) _then)
      : super(_value, (v) => _then(v as _PageInfo));

  @override
  _PageInfo get _value => super._value as _PageInfo;

  @override
  $Res call({
    Object? totalResults = freezed,
    Object? resultsPerPage = freezed,
  }) {
    return _then(_PageInfo(
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      resultsPerPage: resultsPerPage == freezed
          ? _value.resultsPerPage
          : resultsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PageInfo with DiagnosticableTreeMixin implements _PageInfo {
  const _$_PageInfo({required this.totalResults, required this.resultsPerPage});

  factory _$_PageInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_PageInfoFromJson(json);

  @override
  final int totalResults;
  @override
  final int resultsPerPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PageInfo(totalResults: $totalResults, resultsPerPage: $resultsPerPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PageInfo'))
      ..add(DiagnosticsProperty('totalResults', totalResults))
      ..add(DiagnosticsProperty('resultsPerPage', resultsPerPage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageInfo &&
            (identical(other.totalResults, totalResults) ||
                const DeepCollectionEquality()
                    .equals(other.totalResults, totalResults)) &&
            (identical(other.resultsPerPage, resultsPerPage) ||
                const DeepCollectionEquality()
                    .equals(other.resultsPerPage, resultsPerPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalResults) ^
      const DeepCollectionEquality().hash(resultsPerPage);

  @JsonKey(ignore: true)
  @override
  _$PageInfoCopyWith<_PageInfo> get copyWith =>
      __$PageInfoCopyWithImpl<_PageInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PageInfoToJson(this);
  }
}

abstract class _PageInfo implements PageInfo {
  const factory _PageInfo(
      {required int totalResults, required int resultsPerPage}) = _$_PageInfo;

  factory _PageInfo.fromJson(Map<String, dynamic> json) = _$_PageInfo.fromJson;

  @override
  int get totalResults => throw _privateConstructorUsedError;
  @override
  int get resultsPerPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PageInfoCopyWith<_PageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
