// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseDataImpl _$$LoginResponseDataImplFromJson(
  Map<String, dynamic> json,
) => _$LoginResponseDataImpl(
  user: User.fromJson(json['user'] as Map<String, dynamic>),
  subscription: Subscription.fromJson(
    json['subscription'] as Map<String, dynamic>,
  ),
  token: json['token'] as String,
);

Map<String, dynamic> _$$LoginResponseDataImplToJson(
  _$LoginResponseDataImpl instance,
) => <String, dynamic>{
  'user': instance.user,
  'subscription': instance.subscription,
  'token': instance.token,
};
