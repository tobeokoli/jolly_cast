// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionDetailsImpl _$$SubscriptionDetailsImplFromJson(
  Map<String, dynamic> json,
) => _$SubscriptionDetailsImpl(
  id: (json['id'] as num).toInt(),
  code: json['code'] as String,
  title: json['title'] as String,
  amount: (json['amount'] as num).toInt(),
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$$SubscriptionDetailsImplToJson(
  _$SubscriptionDetailsImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'title': instance.title,
  'amount': instance.amount,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
