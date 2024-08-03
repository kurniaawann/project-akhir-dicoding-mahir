// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_response_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssetDetailStoryImpl _$$AssetDetailStoryImplFromJson(
        Map<String, dynamic> json) =>
    _$AssetDetailStoryImpl(
      error: json['error'] as bool,
      message: json['message'] as String,
      story: Story.fromJson(json['story'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AssetDetailStoryImplToJson(
        _$AssetDetailStoryImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'story': instance.story,
    };
