// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionImpl _$$SubscriptionImplFromJson(Map<String, dynamic> json) =>
    _$SubscriptionImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      userIdString: json['userId'] as String,
      effectiveTime: json['effectiveTime'] as String,
      expiryTime: json['expiryTime'] as String,
      updateTime: json['updateTime'] as String,
      isOTC: json['isOTC'] as String,
      productId: json['productId'] as String,
      serviceId: json['serviceId'] as String,
      spId: json['spId'] as String,
      statusCode: json['statusCode'] as String,
      chargeMode: json['chargeMode'] as String?,
      chargeNumber: json['chargeNumber'] as String?,
      referenceId: json['referenceId'] as String?,
      details: SubscriptionDetails.fromJson(
        json['details'] as Map<String, dynamic>,
      ),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$SubscriptionImplToJson(_$SubscriptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'userId': instance.userIdString,
      'effectiveTime': instance.effectiveTime,
      'expiryTime': instance.expiryTime,
      'updateTime': instance.updateTime,
      'isOTC': instance.isOTC,
      'productId': instance.productId,
      'serviceId': instance.serviceId,
      'spId': instance.spId,
      'statusCode': instance.statusCode,
      'chargeMode': instance.chargeMode,
      'chargeNumber': instance.chargeNumber,
      'referenceId': instance.referenceId,
      'details': instance.details,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
