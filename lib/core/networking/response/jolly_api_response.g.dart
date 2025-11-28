// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jolly_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JollyApiResponseImpl<T> _$$JollyApiResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _$JollyApiResponseImpl<T>(
  message: json['message'] as String,
  data: fromJsonT(json['data']),
  rawResponse: json['rawResponse'],
);

Map<String, dynamic> _$$JollyApiResponseImplToJson<T>(
  _$JollyApiResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'message': instance.message,
  'data': toJsonT(instance.data),
  'rawResponse': instance.rawResponse,
};
