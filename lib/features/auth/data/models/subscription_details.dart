// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_details.freezed.dart';
part 'subscription_details.g.dart';

@freezed
class SubscriptionDetails with _$SubscriptionDetails {
  const factory SubscriptionDetails({
    required int id,
    required String code,
    required String title,
    required int amount,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _SubscriptionDetails;

  factory SubscriptionDetails.fromJson(Map<String, dynamic> json) => _$SubscriptionDetailsFromJson(json);
}
