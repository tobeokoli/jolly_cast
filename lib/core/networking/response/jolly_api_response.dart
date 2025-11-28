import 'package:freezed_annotation/freezed_annotation.dart';

part 'jolly_api_response.freezed.dart';
part 'jolly_api_response.g.dart';

@Freezed(genericArgumentFactories: true)
class JollyApiResponse<T> with _$JollyApiResponse<T> {
  const factory JollyApiResponse({
    required String message,
    required T data,
    required dynamic rawResponse,
  }) = _JollyApiResponse<T>;

  factory JollyApiResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$JollyApiResponseFromJson(json, fromJsonT);
}
