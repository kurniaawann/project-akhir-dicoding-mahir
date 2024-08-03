import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_detail_story.g.dart';
part 'model_detail_story.freezed.dart';

@freezed
class Story with _$Story {
  const factory Story({
    required String id,
    required String name,
    required String description,
    required String photoUrl,
    required DateTime createdAt,
    required double? lat,
    required double? lon,
  }) = _story;
  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}
