import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_list_story.g.dart';
part 'model_list_story.freezed.dart';

@freezed
class ListStories with _$ListStories {
  const factory ListStories({
    required String id,
    required String name,
    required String description,
    required String photoUrl,
    required DateTime createdAt,
    required double? lat,
    required double? lon,
  }) = _ListStories;

  factory ListStories.fromJson(Map<String, dynamic> json) =>
      _$ListStoriesFromJson(json);
}
