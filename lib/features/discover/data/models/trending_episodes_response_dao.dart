// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'episode.dart';

part 'trending_episodes_response_dao.freezed.dart';
part 'trending_episodes_response_dao.g.dart';

@freezed
class TrendingEpisodesResponseDao with _$TrendingEpisodesResponseDao {
  const factory TrendingEpisodesResponseDao({
    List<Episode>? data,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    List<dynamic>? links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    int? to,
    int? total,
  }) = _TrendingEpisodesResponseDao;

  factory TrendingEpisodesResponseDao.fromJson(Map<String, dynamic> json) => _$TrendingEpisodesResponseDaoFromJson(json);
}
