// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
mixin _$Subscription {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String get userIdString => throw _privateConstructorUsedError;
  @JsonKey(name: 'effectiveTime')
  String get effectiveTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiryTime')
  String get expiryTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateTime')
  String get updateTime => throw _privateConstructorUsedError;
  String get isOTC => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  String get serviceId => throw _privateConstructorUsedError;
  String get spId => throw _privateConstructorUsedError;
  String get statusCode => throw _privateConstructorUsedError;
  String? get chargeMode => throw _privateConstructorUsedError;
  String? get chargeNumber => throw _privateConstructorUsedError;
  String? get referenceId => throw _privateConstructorUsedError;
  SubscriptionDetails get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Subscription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
    Subscription value,
    $Res Function(Subscription) then,
  ) = _$SubscriptionCopyWithImpl<$Res, Subscription>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'user_id') int userId,
    @JsonKey(name: 'userId') String userIdString,
    @JsonKey(name: 'effectiveTime') String effectiveTime,
    @JsonKey(name: 'expiryTime') String expiryTime,
    @JsonKey(name: 'updateTime') String updateTime,
    String isOTC,
    String productId,
    String serviceId,
    String spId,
    String statusCode,
    String? chargeMode,
    String? chargeNumber,
    String? referenceId,
    SubscriptionDetails details,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'updated_at') String updatedAt,
  });

  $SubscriptionDetailsCopyWith<$Res> get details;
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res, $Val extends Subscription>
    implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userIdString = null,
    Object? effectiveTime = null,
    Object? expiryTime = null,
    Object? updateTime = null,
    Object? isOTC = null,
    Object? productId = null,
    Object? serviceId = null,
    Object? spId = null,
    Object? statusCode = null,
    Object? chargeMode = freezed,
    Object? chargeNumber = freezed,
    Object? referenceId = freezed,
    Object? details = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            userIdString: null == userIdString
                ? _value.userIdString
                : userIdString // ignore: cast_nullable_to_non_nullable
                      as String,
            effectiveTime: null == effectiveTime
                ? _value.effectiveTime
                : effectiveTime // ignore: cast_nullable_to_non_nullable
                      as String,
            expiryTime: null == expiryTime
                ? _value.expiryTime
                : expiryTime // ignore: cast_nullable_to_non_nullable
                      as String,
            updateTime: null == updateTime
                ? _value.updateTime
                : updateTime // ignore: cast_nullable_to_non_nullable
                      as String,
            isOTC: null == isOTC
                ? _value.isOTC
                : isOTC // ignore: cast_nullable_to_non_nullable
                      as String,
            productId: null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as String,
            serviceId: null == serviceId
                ? _value.serviceId
                : serviceId // ignore: cast_nullable_to_non_nullable
                      as String,
            spId: null == spId
                ? _value.spId
                : spId // ignore: cast_nullable_to_non_nullable
                      as String,
            statusCode: null == statusCode
                ? _value.statusCode
                : statusCode // ignore: cast_nullable_to_non_nullable
                      as String,
            chargeMode: freezed == chargeMode
                ? _value.chargeMode
                : chargeMode // ignore: cast_nullable_to_non_nullable
                      as String?,
            chargeNumber: freezed == chargeNumber
                ? _value.chargeNumber
                : chargeNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            referenceId: freezed == referenceId
                ? _value.referenceId
                : referenceId // ignore: cast_nullable_to_non_nullable
                      as String?,
            details: null == details
                ? _value.details
                : details // ignore: cast_nullable_to_non_nullable
                      as SubscriptionDetails,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionDetailsCopyWith<$Res> get details {
    return $SubscriptionDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionImplCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$$SubscriptionImplCopyWith(
    _$SubscriptionImpl value,
    $Res Function(_$SubscriptionImpl) then,
  ) = __$$SubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'user_id') int userId,
    @JsonKey(name: 'userId') String userIdString,
    @JsonKey(name: 'effectiveTime') String effectiveTime,
    @JsonKey(name: 'expiryTime') String expiryTime,
    @JsonKey(name: 'updateTime') String updateTime,
    String isOTC,
    String productId,
    String serviceId,
    String spId,
    String statusCode,
    String? chargeMode,
    String? chargeNumber,
    String? referenceId,
    SubscriptionDetails details,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'updated_at') String updatedAt,
  });

  @override
  $SubscriptionDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$$SubscriptionImplCopyWithImpl<$Res>
    extends _$SubscriptionCopyWithImpl<$Res, _$SubscriptionImpl>
    implements _$$SubscriptionImplCopyWith<$Res> {
  __$$SubscriptionImplCopyWithImpl(
    _$SubscriptionImpl _value,
    $Res Function(_$SubscriptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userIdString = null,
    Object? effectiveTime = null,
    Object? expiryTime = null,
    Object? updateTime = null,
    Object? isOTC = null,
    Object? productId = null,
    Object? serviceId = null,
    Object? spId = null,
    Object? statusCode = null,
    Object? chargeMode = freezed,
    Object? chargeNumber = freezed,
    Object? referenceId = freezed,
    Object? details = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$SubscriptionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        userIdString: null == userIdString
            ? _value.userIdString
            : userIdString // ignore: cast_nullable_to_non_nullable
                  as String,
        effectiveTime: null == effectiveTime
            ? _value.effectiveTime
            : effectiveTime // ignore: cast_nullable_to_non_nullable
                  as String,
        expiryTime: null == expiryTime
            ? _value.expiryTime
            : expiryTime // ignore: cast_nullable_to_non_nullable
                  as String,
        updateTime: null == updateTime
            ? _value.updateTime
            : updateTime // ignore: cast_nullable_to_non_nullable
                  as String,
        isOTC: null == isOTC
            ? _value.isOTC
            : isOTC // ignore: cast_nullable_to_non_nullable
                  as String,
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as String,
        serviceId: null == serviceId
            ? _value.serviceId
            : serviceId // ignore: cast_nullable_to_non_nullable
                  as String,
        spId: null == spId
            ? _value.spId
            : spId // ignore: cast_nullable_to_non_nullable
                  as String,
        statusCode: null == statusCode
            ? _value.statusCode
            : statusCode // ignore: cast_nullable_to_non_nullable
                  as String,
        chargeMode: freezed == chargeMode
            ? _value.chargeMode
            : chargeMode // ignore: cast_nullable_to_non_nullable
                  as String?,
        chargeNumber: freezed == chargeNumber
            ? _value.chargeNumber
            : chargeNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        referenceId: freezed == referenceId
            ? _value.referenceId
            : referenceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        details: null == details
            ? _value.details
            : details // ignore: cast_nullable_to_non_nullable
                  as SubscriptionDetails,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionImpl implements _Subscription {
  const _$SubscriptionImpl({
    required this.id,
    @JsonKey(name: 'user_id') required this.userId,
    @JsonKey(name: 'userId') required this.userIdString,
    @JsonKey(name: 'effectiveTime') required this.effectiveTime,
    @JsonKey(name: 'expiryTime') required this.expiryTime,
    @JsonKey(name: 'updateTime') required this.updateTime,
    required this.isOTC,
    required this.productId,
    required this.serviceId,
    required this.spId,
    required this.statusCode,
    this.chargeMode,
    this.chargeNumber,
    this.referenceId,
    required this.details,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
  });

  factory _$SubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'userId')
  final String userIdString;
  @override
  @JsonKey(name: 'effectiveTime')
  final String effectiveTime;
  @override
  @JsonKey(name: 'expiryTime')
  final String expiryTime;
  @override
  @JsonKey(name: 'updateTime')
  final String updateTime;
  @override
  final String isOTC;
  @override
  final String productId;
  @override
  final String serviceId;
  @override
  final String spId;
  @override
  final String statusCode;
  @override
  final String? chargeMode;
  @override
  final String? chargeNumber;
  @override
  final String? referenceId;
  @override
  final SubscriptionDetails details;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'Subscription(id: $id, userId: $userId, userIdString: $userIdString, effectiveTime: $effectiveTime, expiryTime: $expiryTime, updateTime: $updateTime, isOTC: $isOTC, productId: $productId, serviceId: $serviceId, spId: $spId, statusCode: $statusCode, chargeMode: $chargeMode, chargeNumber: $chargeNumber, referenceId: $referenceId, details: $details, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userIdString, userIdString) ||
                other.userIdString == userIdString) &&
            (identical(other.effectiveTime, effectiveTime) ||
                other.effectiveTime == effectiveTime) &&
            (identical(other.expiryTime, expiryTime) ||
                other.expiryTime == expiryTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(other.isOTC, isOTC) || other.isOTC == isOTC) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.spId, spId) || other.spId == spId) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.chargeMode, chargeMode) ||
                other.chargeMode == chargeMode) &&
            (identical(other.chargeNumber, chargeNumber) ||
                other.chargeNumber == chargeNumber) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    userIdString,
    effectiveTime,
    expiryTime,
    updateTime,
    isOTC,
    productId,
    serviceId,
    spId,
    statusCode,
    chargeMode,
    chargeNumber,
    referenceId,
    details,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      __$$SubscriptionImplCopyWithImpl<_$SubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionImplToJson(this);
  }
}

abstract class _Subscription implements Subscription {
  const factory _Subscription({
    required final int id,
    @JsonKey(name: 'user_id') required final int userId,
    @JsonKey(name: 'userId') required final String userIdString,
    @JsonKey(name: 'effectiveTime') required final String effectiveTime,
    @JsonKey(name: 'expiryTime') required final String expiryTime,
    @JsonKey(name: 'updateTime') required final String updateTime,
    required final String isOTC,
    required final String productId,
    required final String serviceId,
    required final String spId,
    required final String statusCode,
    final String? chargeMode,
    final String? chargeNumber,
    final String? referenceId,
    required final SubscriptionDetails details,
    @JsonKey(name: 'created_at') required final String createdAt,
    @JsonKey(name: 'updated_at') required final String updatedAt,
  }) = _$SubscriptionImpl;

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$SubscriptionImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'userId')
  String get userIdString;
  @override
  @JsonKey(name: 'effectiveTime')
  String get effectiveTime;
  @override
  @JsonKey(name: 'expiryTime')
  String get expiryTime;
  @override
  @JsonKey(name: 'updateTime')
  String get updateTime;
  @override
  String get isOTC;
  @override
  String get productId;
  @override
  String get serviceId;
  @override
  String get spId;
  @override
  String get statusCode;
  @override
  String? get chargeMode;
  @override
  String? get chargeNumber;
  @override
  String? get referenceId;
  @override
  SubscriptionDetails get details;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
