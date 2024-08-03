import 'package:dicoding_storyapp_awal/model/model_list_story.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'asset_response_list.g.dart';
part 'asset_response_list.freezed.dart';

@freezed
class AssetStories with _$AssetStories {
  const factory AssetStories({
    required List<ListStories> list,
  }) = _AssetStories;

  factory AssetStories.fromJson(json) => _$AssetStoriesFromJson(json);
}
