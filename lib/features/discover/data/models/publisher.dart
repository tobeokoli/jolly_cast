// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'publisher.freezed.dart';
part 'publisher.g.dart';

@freezed
class Publisher with _$Publisher {
  const factory Publisher({
    int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'company_name') String? companyName,
    String? email,
    @JsonKey(name: 'profile_image_url') String? profileImageUrl,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _Publisher;

  factory Publisher.fromJson(Map<String, dynamic> json) => _$PublisherFromJson(json);
}
