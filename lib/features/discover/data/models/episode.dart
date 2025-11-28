// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'podcast.dart';

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
class Episode with _$Episode {
  const factory Episode({
    int? id,
    @JsonKey(name: 'podcast_id') int? podcastId,
    @JsonKey(name: 'content_url') String? contentUrl,
    String? title,
    String? season,
    String? number,
    @JsonKey(name: 'picture_url') String? pictureUrl,
    String? description,
    bool? explicit,
    int? duration,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'average_rating') double? averageRating,
    Podcast? podcast,
    @JsonKey(name: 'published_at') String? publishedAt,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) => _$EpisodeFromJson(json);
}
