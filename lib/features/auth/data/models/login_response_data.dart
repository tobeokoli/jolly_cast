import 'package:freezed_annotation/freezed_annotation.dart';
import 'subscription.dart';
import 'user.dart';

part 'login_response_data.freezed.dart';
part 'login_response_data.g.dart';

@freezed
class LoginResponseData with _$LoginResponseData {
  const factory LoginResponseData({
    required User user,
    required Subscription subscription,
    required String token,
  }) = _LoginResponseData;

  factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);
}
