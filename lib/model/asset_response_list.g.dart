// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_response_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssetStoriesImpl _$$AssetStoriesImplFromJson(Map<String, dynamic> json) =>
    _$AssetStoriesImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => ListStories.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AssetStoriesImplToJson(_$AssetStoriesImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
