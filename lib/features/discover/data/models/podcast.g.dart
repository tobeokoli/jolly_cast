// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PodcastImpl _$$PodcastImplFromJson(Map<String, dynamic> json) =>
    _$PodcastImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      title: json['title'] as String?,
      author: json['author'] as String?,
      categoryName: json['category_name'] as String?,
      categoryType: json['category_type'] as String?,
      pictureUrl: json['picture_url'] as String?,
      coverPictureUrl: json['cover_picture_url'] as String?,
      description: json['description'] as String?,
      embeddablePlayerSettings: json['embeddable_player_settings'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      publisher: json['publisher'] == null
          ? null
          : Publisher.fromJson(json['publisher'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PodcastImplToJson(_$PodcastImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'title': instance.title,
      'author': instance.author,
      'category_name': instance.categoryName,
      'category_type': instance.categoryType,
      'picture_url': instance.pictureUrl,
      'cover_picture_url': instance.coverPictureUrl,
      'description': instance.description,
      'embeddable_player_settings': instance.embeddablePlayerSettings,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'publisher': instance.publisher,
    };
