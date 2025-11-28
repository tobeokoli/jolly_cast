// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'subscription_details.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

@freezed
class Subscription with _$Subscription {
  const factory Subscription({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'userId') required String userIdString,
    @JsonKey(name: 'effectiveTime') required String effectiveTime,
    @JsonKey(name: 'expiryTime') required String expiryTime,
    @JsonKey(name: 'updateTime') required String updateTime,
    required String isOTC,
    required String productId,
    required String serviceId,
    required String spId,
    required String statusCode,
    String? chargeMode,
    String? chargeNumber,
    String? referenceId,
    required SubscriptionDetails details,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);
}
