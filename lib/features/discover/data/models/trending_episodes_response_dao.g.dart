// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_episodes_response_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrendingEpisodesResponseDaoImpl _$$TrendingEpisodesResponseDaoImplFromJson(
  Map<String, dynamic> json,
) => _$TrendingEpisodesResponseDaoImpl(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => Episode.fromJson(e as Map<String, dynamic>))
      .toList(),
  currentPage: (json['current_page'] as num?)?.toInt(),
  firstPageUrl: json['first_page_url'] as String?,
  from: (json['from'] as num?)?.toInt(),
  lastPage: (json['last_page'] as num?)?.toInt(),
  lastPageUrl: json['last_page_url'] as String?,
  links: json['links'] as List<dynamic>?,
  nextPageUrl: json['next_page_url'] as String?,
  path: json['path'] as String?,
  perPage: (json['per_page'] as num?)?.toInt(),
  prevPageUrl: json['prev_page_url'] as String?,
  to: (json['to'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
);

Map<String, dynamic> _$$TrendingEpisodesResponseDaoImplToJson(
  _$TrendingEpisodesResponseDaoImpl instance,
) => <String, dynamic>{
  'data': instance.data,
  'current_page': instance.currentPage,
  'first_page_url': instance.firstPageUrl,
  'from': instance.from,
  'last_page': instance.lastPage,
  'last_page_url': instance.lastPageUrl,
  'links': instance.links,
  'next_page_url': instance.nextPageUrl,
  'path': instance.path,
  'per_page': instance.perPage,
  'prev_page_url': instance.prevPageUrl,
  'to': instance.to,
  'total': instance.total,
};
