import 'package:freezed_annotation/freezed_annotation.dart';

import 'episode.dart';

part 'editors_pick_response_dao.freezed.dart';
part 'editors_pick_response_dao.g.dart';

@freezed
class EditorsPickResponseDao with _$EditorsPickResponseDao {
  const factory EditorsPickResponseDao({String? message, Episode? data}) = _EditorsPickResponseDao;

  factory EditorsPickResponseDao.fromJson(Map<String, dynamic> json) => _$EditorsPickResponseDaoFromJson(json);
}
