// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_response_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssetStories _$AssetStoriesFromJson(Map<String, dynamic> json) {
  return _AssetStories.fromJson(json);
}

/// @nodoc
mixin _$AssetStories {
  List<ListStories> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetStoriesCopyWith<AssetStories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetStoriesCopyWith<$Res> {
  factory $AssetStoriesCopyWith(
          AssetStories value, $Res Function(AssetStories) then) =
      _$AssetStoriesCopyWithImpl<$Res, AssetStories>;
  @useResult
  $Res call({List<ListStories> list});
}

/// @nodoc
class _$AssetStoriesCopyWithImpl<$Res, $Val extends AssetStories>
    implements $AssetStoriesCopyWith<$Res> {
  _$AssetStoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ListStories>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssetStoriesImplCopyWith<$Res>
    implements $AssetStoriesCopyWith<$Res> {
  factory _$$AssetStoriesImplCopyWith(
          _$AssetStoriesImpl value, $Res Function(_$AssetStoriesImpl) then) =
      __$$AssetStoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ListStories> list});
}

/// @nodoc
class __$$AssetStoriesImplCopyWithImpl<$Res>
    extends _$AssetStoriesCopyWithImpl<$Res, _$AssetStoriesImpl>
    implements _$$AssetStoriesImplCopyWith<$Res> {
  __$$AssetStoriesImplCopyWithImpl(
      _$AssetStoriesImpl _value, $Res Function(_$AssetStoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$AssetStoriesImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ListStories>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssetStoriesImpl implements _AssetStories {
  const _$AssetStoriesImpl({required final List<ListStories> list})
      : _list = list;

  factory _$AssetStoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssetStoriesImplFromJson(json);

  final List<ListStories> _list;
  @override
  List<ListStories> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'AssetStories(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetStoriesImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetStoriesImplCopyWith<_$AssetStoriesImpl> get copyWith =>
      __$$AssetStoriesImplCopyWithImpl<_$AssetStoriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssetStoriesImplToJson(
      this,
    );
  }
}

abstract class _AssetStories implements AssetStories {
  const factory _AssetStories({required final List<ListStories> list}) =
      _$AssetStoriesImpl;

  factory _AssetStories.fromJson(Map<String, dynamic> json) =
      _$AssetStoriesImpl.fromJson;

  @override
  List<ListStories> get list;
  @override
  @JsonKey(ignore: true)
  _$$AssetStoriesImplCopyWith<_$AssetStoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
