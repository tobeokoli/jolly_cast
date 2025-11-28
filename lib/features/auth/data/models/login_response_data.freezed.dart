// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoginResponseData _$LoginResponseDataFromJson(Map<String, dynamic> json) {
  return _LoginResponseData.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseData {
  User get user => throw _privateConstructorUsedError;
  Subscription get subscription => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Serializes this LoginResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResponseDataCopyWith<LoginResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseDataCopyWith<$Res> {
  factory $LoginResponseDataCopyWith(
    LoginResponseData value,
    $Res Function(LoginResponseData) then,
  ) = _$LoginResponseDataCopyWithImpl<$Res, LoginResponseData>;
  @useResult
  $Res call({User user, Subscription subscription, String token});

  $UserCopyWith<$Res> get user;
  $SubscriptionCopyWith<$Res> get subscription;
}

/// @nodoc
class _$LoginResponseDataCopyWithImpl<$Res, $Val extends LoginResponseData>
    implements $LoginResponseDataCopyWith<$Res> {
  _$LoginResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? subscription = null,
    Object? token = null,
  }) {
    return _then(
      _value.copyWith(
            user: null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as User,
            subscription: null == subscription
                ? _value.subscription
                : subscription // ignore: cast_nullable_to_non_nullable
                      as Subscription,
            token: null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionCopyWith<$Res> get subscription {
    return $SubscriptionCopyWith<$Res>(_value.subscription, (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseDataImplCopyWith<$Res>
    implements $LoginResponseDataCopyWith<$Res> {
  factory _$$LoginResponseDataImplCopyWith(
    _$LoginResponseDataImpl value,
    $Res Function(_$LoginResponseDataImpl) then,
  ) = __$$LoginResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, Subscription subscription, String token});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $SubscriptionCopyWith<$Res> get subscription;
}

/// @nodoc
class __$$LoginResponseDataImplCopyWithImpl<$Res>
    extends _$LoginResponseDataCopyWithImpl<$Res, _$LoginResponseDataImpl>
    implements _$$LoginResponseDataImplCopyWith<$Res> {
  __$$LoginResponseDataImplCopyWithImpl(
    _$LoginResponseDataImpl _value,
    $Res Function(_$LoginResponseDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? subscription = null,
    Object? token = null,
  }) {
    return _then(
      _$LoginResponseDataImpl(
        user: null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
        subscription: null == subscription
            ? _value.subscription
            : subscription // ignore: cast_nullable_to_non_nullable
                  as Subscription,
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseDataImpl implements _LoginResponseData {
  const _$LoginResponseDataImpl({
    required this.user,
    required this.subscription,
    required this.token,
  });

  factory _$LoginResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseDataImplFromJson(json);

  @override
  final User user;
  @override
  final Subscription subscription;
  @override
  final String token;

  @override
  String toString() {
    return 'LoginResponseData(user: $user, subscription: $subscription, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseDataImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, subscription, token);

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseDataImplCopyWith<_$LoginResponseDataImpl> get copyWith =>
      __$$LoginResponseDataImplCopyWithImpl<_$LoginResponseDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseDataImplToJson(this);
  }
}

abstract class _LoginResponseData implements LoginResponseData {
  const factory _LoginResponseData({
    required final User user,
    required final Subscription subscription,
    required final String token,
  }) = _$LoginResponseDataImpl;

  factory _LoginResponseData.fromJson(Map<String, dynamic> json) =
      _$LoginResponseDataImpl.fromJson;

  @override
  User get user;
  @override
  Subscription get subscription;
  @override
  String get token;

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResponseDataImplCopyWith<_$LoginResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
