// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editors_pick_response_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditorsPickResponseDaoImpl _$$EditorsPickResponseDaoImplFromJson(
  Map<String, dynamic> json,
) => _$EditorsPickResponseDaoImpl(
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : Episode.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$EditorsPickResponseDaoImplToJson(
  _$EditorsPickResponseDaoImpl instance,
) => <String, dynamic>{'message': instance.message, 'data': instance.data};
