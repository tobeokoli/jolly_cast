// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpisodeImpl _$$EpisodeImplFromJson(Map<String, dynamic> json) =>
    _$EpisodeImpl(
      id: (json['id'] as num?)?.toInt(),
      podcastId: (json['podcast_id'] as num?)?.toInt(),
      contentUrl: json['content_url'] as String?,
      title: json['title'] as String?,
      season: json['season'] as String?,
      number: json['number'] as String?,
      pictureUrl: json['picture_url'] as String?,
      description: json['description'] as String?,
      explicit: json['explicit'] as bool?,
      duration: (json['duration'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      averageRating: (json['average_rating'] as num?)?.toDouble(),
      podcast: json['podcast'] == null
          ? null
          : Podcast.fromJson(json['podcast'] as Map<String, dynamic>),
      publishedAt: json['published_at'] as String?,
    );

Map<String, dynamic> _$$EpisodeImplToJson(_$EpisodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'podcast_id': instance.podcastId,
      'content_url': instance.contentUrl,
      'title': instance.title,
      'season': instance.season,
      'number': instance.number,
      'picture_url': instance.pictureUrl,
      'description': instance.description,
      'explicit': instance.explicit,
      'duration': instance.duration,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'average_rating': instance.averageRating,
      'podcast': instance.podcast,
      'published_at': instance.publishedAt,
    };
