import 'model_detail_story.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'asset_response_detail.g.dart';
part 'asset_response_detail.freezed.dart';

@freezed
class AssetDetailStory with _$AssetDetailStory {
  const factory AssetDetailStory({
    required bool error,
    required String message,
    required Story story,
  }) = _AssetDetailStory;

  factory AssetDetailStory.fromJson(json) => _$AssetDetailStoryFromJson(json);
}
