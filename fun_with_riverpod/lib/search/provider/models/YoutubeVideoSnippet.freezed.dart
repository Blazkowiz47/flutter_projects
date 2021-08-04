// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'YoutubeVideoSnippet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Snippet _$SnippetFromJson(Map<String, dynamic> json) {
  return _Snippet.fromJson(json);
}

/// @nodoc
class _$SnippetTearOff {
  const _$SnippetTearOff();

  _Snippet call(
      {required String publishedAt,
      required String channelId,
      required String title,
      required String description,
      required Thumbnails thumbnails,
      required String channelTitle,
      String? liveBroadcastContent,
      String? publishTime}) {
    return _Snippet(
      publishedAt: publishedAt,
      channelId: channelId,
      title: title,
      description: description,
      thumbnails: thumbnails,
      channelTitle: channelTitle,
      liveBroadcastContent: liveBroadcastContent,
      publishTime: publishTime,
    );
  }

  Snippet fromJson(Map<String, Object> json) {
    return Snippet.fromJson(json);
  }
}

/// @nodoc
const $Snippet = _$SnippetTearOff();

/// @nodoc
mixin _$Snippet {
  String get publishedAt => throw _privateConstructorUsedError;
  String get channelId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Thumbnails get thumbnails => throw _privateConstructorUsedError;
  String get channelTitle => throw _privateConstructorUsedError;
  String? get liveBroadcastContent => throw _privateConstructorUsedError;
  String? get publishTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnippetCopyWith<Snippet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnippetCopyWith<$Res> {
  factory $SnippetCopyWith(Snippet value, $Res Function(Snippet) then) =
      _$SnippetCopyWithImpl<$Res>;
  $Res call(
      {String publishedAt,
      String channelId,
      String title,
      String description,
      Thumbnails thumbnails,
      String channelTitle,
      String? liveBroadcastContent,
      String? publishTime});

  $ThumbnailsCopyWith<$Res> get thumbnails;
}

/// @nodoc
class _$SnippetCopyWithImpl<$Res> implements $SnippetCopyWith<$Res> {
  _$SnippetCopyWithImpl(this._value, this._then);

  final Snippet _value;
  // ignore: unused_field
  final $Res Function(Snippet) _then;

  @override
  $Res call({
    Object? publishedAt = freezed,
    Object? channelId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnails = freezed,
    Object? channelTitle = freezed,
    Object? liveBroadcastContent = freezed,
    Object? publishTime = freezed,
  }) {
    return _then(_value.copyWith(
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Thumbnails,
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String,
      liveBroadcastContent: liveBroadcastContent == freezed
          ? _value.liveBroadcastContent
          : liveBroadcastContent // ignore: cast_nullable_to_non_nullable
              as String?,
      publishTime: publishTime == freezed
          ? _value.publishTime
          : publishTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ThumbnailsCopyWith<$Res> get thumbnails {
    return $ThumbnailsCopyWith<$Res>(_value.thumbnails, (value) {
      return _then(_value.copyWith(thumbnails: value));
    });
  }
}

/// @nodoc
abstract class _$SnippetCopyWith<$Res> implements $SnippetCopyWith<$Res> {
  factory _$SnippetCopyWith(_Snippet value, $Res Function(_Snippet) then) =
      __$SnippetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String publishedAt,
      String channelId,
      String title,
      String description,
      Thumbnails thumbnails,
      String channelTitle,
      String? liveBroadcastContent,
      String? publishTime});

  @override
  $ThumbnailsCopyWith<$Res> get thumbnails;
}

/// @nodoc
class __$SnippetCopyWithImpl<$Res> extends _$SnippetCopyWithImpl<$Res>
    implements _$SnippetCopyWith<$Res> {
  __$SnippetCopyWithImpl(_Snippet _value, $Res Function(_Snippet) _then)
      : super(_value, (v) => _then(v as _Snippet));

  @override
  _Snippet get _value => super._value as _Snippet;

  @override
  $Res call({
    Object? publishedAt = freezed,
    Object? channelId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnails = freezed,
    Object? channelTitle = freezed,
    Object? liveBroadcastContent = freezed,
    Object? publishTime = freezed,
  }) {
    return _then(_Snippet(
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Thumbnails,
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String,
      liveBroadcastContent: liveBroadcastContent == freezed
          ? _value.liveBroadcastContent
          : liveBroadcastContent // ignore: cast_nullable_to_non_nullable
              as String?,
      publishTime: publishTime == freezed
          ? _value.publishTime
          : publishTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Snippet with DiagnosticableTreeMixin implements _Snippet {
  const _$_Snippet(
      {required this.publishedAt,
      required this.channelId,
      required this.title,
      required this.description,
      required this.thumbnails,
      required this.channelTitle,
      this.liveBroadcastContent,
      this.publishTime});

  factory _$_Snippet.fromJson(Map<String, dynamic> json) =>
      _$_$_SnippetFromJson(json);

  @override
  final String publishedAt;
  @override
  final String channelId;
  @override
  final String title;
  @override
  final String description;
  @override
  final Thumbnails thumbnails;
  @override
  final String channelTitle;
  @override
  final String? liveBroadcastContent;
  @override
  final String? publishTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Snippet(publishedAt: $publishedAt, channelId: $channelId, title: $title, description: $description, thumbnails: $thumbnails, channelTitle: $channelTitle, liveBroadcastContent: $liveBroadcastContent, publishTime: $publishTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Snippet'))
      ..add(DiagnosticsProperty('publishedAt', publishedAt))
      ..add(DiagnosticsProperty('channelId', channelId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('thumbnails', thumbnails))
      ..add(DiagnosticsProperty('channelTitle', channelTitle))
      ..add(DiagnosticsProperty('liveBroadcastContent', liveBroadcastContent))
      ..add(DiagnosticsProperty('publishTime', publishTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Snippet &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.publishedAt, publishedAt)) &&
            (identical(other.channelId, channelId) ||
                const DeepCollectionEquality()
                    .equals(other.channelId, channelId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.thumbnails, thumbnails) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnails, thumbnails)) &&
            (identical(other.channelTitle, channelTitle) ||
                const DeepCollectionEquality()
                    .equals(other.channelTitle, channelTitle)) &&
            (identical(other.liveBroadcastContent, liveBroadcastContent) ||
                const DeepCollectionEquality().equals(
                    other.liveBroadcastContent, liveBroadcastContent)) &&
            (identical(other.publishTime, publishTime) ||
                const DeepCollectionEquality()
                    .equals(other.publishTime, publishTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(publishedAt) ^
      const DeepCollectionEquality().hash(channelId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(thumbnails) ^
      const DeepCollectionEquality().hash(channelTitle) ^
      const DeepCollectionEquality().hash(liveBroadcastContent) ^
      const DeepCollectionEquality().hash(publishTime);

  @JsonKey(ignore: true)
  @override
  _$SnippetCopyWith<_Snippet> get copyWith =>
      __$SnippetCopyWithImpl<_Snippet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SnippetToJson(this);
  }
}

abstract class _Snippet implements Snippet {
  const factory _Snippet(
      {required String publishedAt,
      required String channelId,
      required String title,
      required String description,
      required Thumbnails thumbnails,
      required String channelTitle,
      String? liveBroadcastContent,
      String? publishTime}) = _$_Snippet;

  factory _Snippet.fromJson(Map<String, dynamic> json) = _$_Snippet.fromJson;

  @override
  String get publishedAt => throw _privateConstructorUsedError;
  @override
  String get channelId => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  Thumbnails get thumbnails => throw _privateConstructorUsedError;
  @override
  String get channelTitle => throw _privateConstructorUsedError;
  @override
  String? get liveBroadcastContent => throw _privateConstructorUsedError;
  @override
  String? get publishTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SnippetCopyWith<_Snippet> get copyWith =>
      throw _privateConstructorUsedError;
}

Thumbnails _$ThumbnailsFromJson(Map<String, dynamic> json) {
  return _Thumbnails.fromJson(json);
}

/// @nodoc
class _$ThumbnailsTearOff {
  const _$ThumbnailsTearOff();

  _Thumbnails call(
      {required Default byDefault, Default? medium, Default? high}) {
    return _Thumbnails(
      byDefault: byDefault,
      medium: medium,
      high: high,
    );
  }

  Thumbnails fromJson(Map<String, Object> json) {
    return Thumbnails.fromJson(json);
  }
}

/// @nodoc
const $Thumbnails = _$ThumbnailsTearOff();

/// @nodoc
mixin _$Thumbnails {
  Default get byDefault => throw _privateConstructorUsedError;
  Default? get medium => throw _privateConstructorUsedError;
  Default? get high => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailsCopyWith<Thumbnails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailsCopyWith<$Res> {
  factory $ThumbnailsCopyWith(
          Thumbnails value, $Res Function(Thumbnails) then) =
      _$ThumbnailsCopyWithImpl<$Res>;
  $Res call({Default byDefault, Default? medium, Default? high});

  $DefaultCopyWith<$Res> get byDefault;
  $DefaultCopyWith<$Res>? get medium;
  $DefaultCopyWith<$Res>? get high;
}

/// @nodoc
class _$ThumbnailsCopyWithImpl<$Res> implements $ThumbnailsCopyWith<$Res> {
  _$ThumbnailsCopyWithImpl(this._value, this._then);

  final Thumbnails _value;
  // ignore: unused_field
  final $Res Function(Thumbnails) _then;

  @override
  $Res call({
    Object? byDefault = freezed,
    Object? medium = freezed,
    Object? high = freezed,
  }) {
    return _then(_value.copyWith(
      byDefault: byDefault == freezed
          ? _value.byDefault
          : byDefault // ignore: cast_nullable_to_non_nullable
              as Default,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Default?,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as Default?,
    ));
  }

  @override
  $DefaultCopyWith<$Res> get byDefault {
    return $DefaultCopyWith<$Res>(_value.byDefault, (value) {
      return _then(_value.copyWith(byDefault: value));
    });
  }

  @override
  $DefaultCopyWith<$Res>? get medium {
    if (_value.medium == null) {
      return null;
    }

    return $DefaultCopyWith<$Res>(_value.medium!, (value) {
      return _then(_value.copyWith(medium: value));
    });
  }

  @override
  $DefaultCopyWith<$Res>? get high {
    if (_value.high == null) {
      return null;
    }

    return $DefaultCopyWith<$Res>(_value.high!, (value) {
      return _then(_value.copyWith(high: value));
    });
  }
}

/// @nodoc
abstract class _$ThumbnailsCopyWith<$Res> implements $ThumbnailsCopyWith<$Res> {
  factory _$ThumbnailsCopyWith(
          _Thumbnails value, $Res Function(_Thumbnails) then) =
      __$ThumbnailsCopyWithImpl<$Res>;
  @override
  $Res call({Default byDefault, Default? medium, Default? high});

  @override
  $DefaultCopyWith<$Res> get byDefault;
  @override
  $DefaultCopyWith<$Res>? get medium;
  @override
  $DefaultCopyWith<$Res>? get high;
}

/// @nodoc
class __$ThumbnailsCopyWithImpl<$Res> extends _$ThumbnailsCopyWithImpl<$Res>
    implements _$ThumbnailsCopyWith<$Res> {
  __$ThumbnailsCopyWithImpl(
      _Thumbnails _value, $Res Function(_Thumbnails) _then)
      : super(_value, (v) => _then(v as _Thumbnails));

  @override
  _Thumbnails get _value => super._value as _Thumbnails;

  @override
  $Res call({
    Object? byDefault = freezed,
    Object? medium = freezed,
    Object? high = freezed,
  }) {
    return _then(_Thumbnails(
      byDefault: byDefault == freezed
          ? _value.byDefault
          : byDefault // ignore: cast_nullable_to_non_nullable
              as Default,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Default?,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as Default?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Thumbnails with DiagnosticableTreeMixin implements _Thumbnails {
  const _$_Thumbnails({required this.byDefault, this.medium, this.high});

  factory _$_Thumbnails.fromJson(Map<String, dynamic> json) =>
      _$_$_ThumbnailsFromJson(json);

  @override
  final Default byDefault;
  @override
  final Default? medium;
  @override
  final Default? high;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Thumbnails(byDefault: $byDefault, medium: $medium, high: $high)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Thumbnails'))
      ..add(DiagnosticsProperty('byDefault', byDefault))
      ..add(DiagnosticsProperty('medium', medium))
      ..add(DiagnosticsProperty('high', high));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Thumbnails &&
            (identical(other.byDefault, byDefault) ||
                const DeepCollectionEquality()
                    .equals(other.byDefault, byDefault)) &&
            (identical(other.medium, medium) ||
                const DeepCollectionEquality().equals(other.medium, medium)) &&
            (identical(other.high, high) ||
                const DeepCollectionEquality().equals(other.high, high)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(byDefault) ^
      const DeepCollectionEquality().hash(medium) ^
      const DeepCollectionEquality().hash(high);

  @JsonKey(ignore: true)
  @override
  _$ThumbnailsCopyWith<_Thumbnails> get copyWith =>
      __$ThumbnailsCopyWithImpl<_Thumbnails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ThumbnailsToJson(this);
  }
}

abstract class _Thumbnails implements Thumbnails {
  const factory _Thumbnails(
      {required Default byDefault,
      Default? medium,
      Default? high}) = _$_Thumbnails;

  factory _Thumbnails.fromJson(Map<String, dynamic> json) =
      _$_Thumbnails.fromJson;

  @override
  Default get byDefault => throw _privateConstructorUsedError;
  @override
  Default? get medium => throw _privateConstructorUsedError;
  @override
  Default? get high => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ThumbnailsCopyWith<_Thumbnails> get copyWith =>
      throw _privateConstructorUsedError;
}

Default _$DefaultFromJson(Map<String, dynamic> json) {
  return _Default.fromJson(json);
}

/// @nodoc
class _$DefaultTearOff {
  const _$DefaultTearOff();

  _Default call(
      {required String url, required int width, required int height}) {
    return _Default(
      url: url,
      width: width,
      height: height,
    );
  }

  Default fromJson(Map<String, Object> json) {
    return Default.fromJson(json);
  }
}

/// @nodoc
const $Default = _$DefaultTearOff();

/// @nodoc
mixin _$Default {
  String get url => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultCopyWith<Default> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultCopyWith<$Res> {
  factory $DefaultCopyWith(Default value, $Res Function(Default) then) =
      _$DefaultCopyWithImpl<$Res>;
  $Res call({String url, int width, int height});
}

/// @nodoc
class _$DefaultCopyWithImpl<$Res> implements $DefaultCopyWith<$Res> {
  _$DefaultCopyWithImpl(this._value, this._then);

  final Default _value;
  // ignore: unused_field
  final $Res Function(Default) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DefaultCopyWith<$Res> implements $DefaultCopyWith<$Res> {
  factory _$DefaultCopyWith(_Default value, $Res Function(_Default) then) =
      __$DefaultCopyWithImpl<$Res>;
  @override
  $Res call({String url, int width, int height});
}

/// @nodoc
class __$DefaultCopyWithImpl<$Res> extends _$DefaultCopyWithImpl<$Res>
    implements _$DefaultCopyWith<$Res> {
  __$DefaultCopyWithImpl(_Default _value, $Res Function(_Default) _then)
      : super(_value, (v) => _then(v as _Default));

  @override
  _Default get _value => super._value as _Default;

  @override
  $Res call({
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_Default(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Default with DiagnosticableTreeMixin implements _Default {
  const _$_Default(
      {required this.url, required this.width, required this.height});

  factory _$_Default.fromJson(Map<String, dynamic> json) =>
      _$_$_DefaultFromJson(json);

  @override
  final String url;
  @override
  final int width;
  @override
  final int height;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Default(url: $url, width: $width, height: $height)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Default'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Default &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height);

  @JsonKey(ignore: true)
  @override
  _$DefaultCopyWith<_Default> get copyWith =>
      __$DefaultCopyWithImpl<_Default>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DefaultToJson(this);
  }
}

abstract class _Default implements Default {
  const factory _Default(
      {required String url,
      required int width,
      required int height}) = _$_Default;

  factory _Default.fromJson(Map<String, dynamic> json) = _$_Default.fromJson;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  int get width => throw _privateConstructorUsedError;
  @override
  int get height => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DefaultCopyWith<_Default> get copyWith =>
      throw _privateConstructorUsedError;
}
