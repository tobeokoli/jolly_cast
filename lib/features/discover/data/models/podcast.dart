// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'publisher.dart';

part 'podcast.freezed.dart';
part 'podcast.g.dart';

@freezed
class Podcast with _$Podcast {
  const factory Podcast({
    int? id,

    @JsonKey(name: 'user_id') int? userId,

    String? title,
    String? author,

    @JsonKey(name: 'category_name') String? categoryName,

    @JsonKey(name: 'category_type') String? categoryType,

    @JsonKey(name: 'picture_url') String? pictureUrl,

    @JsonKey(name: 'cover_picture_url') String? coverPictureUrl,

    String? description,

    @JsonKey(name: 'embeddable_player_settings') dynamic embeddablePlayerSettings,

    @JsonKey(name: 'created_at') String? createdAt,

    @JsonKey(name: 'updated_at') String? updatedAt,
    Publisher? publisher,
  }) = _Podcast;

  factory Podcast.fromJson(Map<String, dynamic> json) => _$PodcastFromJson(json);
}
