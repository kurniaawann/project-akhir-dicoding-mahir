// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_response_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssetDetailStory _$AssetDetailStoryFromJson(Map<String, dynamic> json) {
  return _AssetDetailStory.fromJson(json);
}

/// @nodoc
mixin _$AssetDetailStory {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Story get story => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetDetailStoryCopyWith<AssetDetailStory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetDetailStoryCopyWith<$Res> {
  factory $AssetDetailStoryCopyWith(
          AssetDetailStory value, $Res Function(AssetDetailStory) then) =
      _$AssetDetailStoryCopyWithImpl<$Res, AssetDetailStory>;
  @useResult
  $Res call({bool error, String message, Story story});

  $StoryCopyWith<$Res> get story;
}

/// @nodoc
class _$AssetDetailStoryCopyWithImpl<$Res, $Val extends AssetDetailStory>
    implements $AssetDetailStoryCopyWith<$Res> {
  _$AssetDetailStoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? story = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      story: null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoryCopyWith<$Res> get story {
    return $StoryCopyWith<$Res>(_value.story, (value) {
      return _then(_value.copyWith(story: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AssetDetailStoryImplCopyWith<$Res>
    implements $AssetDetailStoryCopyWith<$Res> {
  factory _$$AssetDetailStoryImplCopyWith(_$AssetDetailStoryImpl value,
          $Res Function(_$AssetDetailStoryImpl) then) =
      __$$AssetDetailStoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String message, Story story});

  @override
  $StoryCopyWith<$Res> get story;
}

/// @nodoc
class __$$AssetDetailStoryImplCopyWithImpl<$Res>
    extends _$AssetDetailStoryCopyWithImpl<$Res, _$AssetDetailStoryImpl>
    implements _$$AssetDetailStoryImplCopyWith<$Res> {
  __$$AssetDetailStoryImplCopyWithImpl(_$AssetDetailStoryImpl _value,
      $Res Function(_$AssetDetailStoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? story = null,
  }) {
    return _then(_$AssetDetailStoryImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      story: null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssetDetailStoryImpl implements _AssetDetailStory {
  const _$AssetDetailStoryImpl(
      {required this.error, required this.message, required this.story});

  factory _$AssetDetailStoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssetDetailStoryImplFromJson(json);

  @override
  final bool error;
  @override
  final String message;
  @override
  final Story story;

  @override
  String toString() {
    return 'AssetDetailStory(error: $error, message: $message, story: $story)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetDetailStoryImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.story, story) || other.story == story));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message, story);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetDetailStoryImplCopyWith<_$AssetDetailStoryImpl> get copyWith =>
      __$$AssetDetailStoryImplCopyWithImpl<_$AssetDetailStoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssetDetailStoryImplToJson(
      this,
    );
  }
}

abstract class _AssetDetailStory implements AssetDetailStory {
  const factory _AssetDetailStory(
      {required final bool error,
      required final String message,
      required final Story story}) = _$AssetDetailStoryImpl;

  factory _AssetDetailStory.fromJson(Map<String, dynamic> json) =
      _$AssetDetailStoryImpl.fromJson;

  @override
  bool get error;
  @override
  String get message;
  @override
  Story get story;
  @override
  @JsonKey(ignore: true)
  _$$AssetDetailStoryImplCopyWith<_$AssetDetailStoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
