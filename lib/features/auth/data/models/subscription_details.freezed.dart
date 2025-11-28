// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SubscriptionDetails _$SubscriptionDetailsFromJson(Map<String, dynamic> json) {
  return _SubscriptionDetails.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionDetails {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionDetailsCopyWith<SubscriptionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionDetailsCopyWith<$Res> {
  factory $SubscriptionDetailsCopyWith(
    SubscriptionDetails value,
    $Res Function(SubscriptionDetails) then,
  ) = _$SubscriptionDetailsCopyWithImpl<$Res, SubscriptionDetails>;
  @useResult
  $Res call({
    int id,
    String code,
    String title,
    int amount,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'updated_at') String updatedAt,
  });
}

/// @nodoc
class _$SubscriptionDetailsCopyWithImpl<$Res, $Val extends SubscriptionDetails>
    implements $SubscriptionDetailsCopyWith<$Res> {
  _$SubscriptionDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? title = null,
    Object? amount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int,
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
}

/// @nodoc
abstract class _$$SubscriptionDetailsImplCopyWith<$Res>
    implements $SubscriptionDetailsCopyWith<$Res> {
  factory _$$SubscriptionDetailsImplCopyWith(
    _$SubscriptionDetailsImpl value,
    $Res Function(_$SubscriptionDetailsImpl) then,
  ) = __$$SubscriptionDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String code,
    String title,
    int amount,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'updated_at') String updatedAt,
  });
}

/// @nodoc
class __$$SubscriptionDetailsImplCopyWithImpl<$Res>
    extends _$SubscriptionDetailsCopyWithImpl<$Res, _$SubscriptionDetailsImpl>
    implements _$$SubscriptionDetailsImplCopyWith<$Res> {
  __$$SubscriptionDetailsImplCopyWithImpl(
    _$SubscriptionDetailsImpl _value,
    $Res Function(_$SubscriptionDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? title = null,
    Object? amount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$SubscriptionDetailsImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$SubscriptionDetailsImpl implements _SubscriptionDetails {
  const _$SubscriptionDetailsImpl({
    required this.id,
    required this.code,
    required this.title,
    required this.amount,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
  });

  factory _$SubscriptionDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionDetailsImplFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final String title;
  @override
  final int amount;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'SubscriptionDetails(id: $id, code: $code, title: $title, amount: $amount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, code, title, amount, createdAt, updatedAt);

  /// Create a copy of SubscriptionDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionDetailsImplCopyWith<_$SubscriptionDetailsImpl> get copyWith =>
      __$$SubscriptionDetailsImplCopyWithImpl<_$SubscriptionDetailsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionDetailsImplToJson(this);
  }
}

abstract class _SubscriptionDetails implements SubscriptionDetails {
  const factory _SubscriptionDetails({
    required final int id,
    required final String code,
    required final String title,
    required final int amount,
    @JsonKey(name: 'created_at') required final String createdAt,
    @JsonKey(name: 'updated_at') required final String updatedAt,
  }) = _$SubscriptionDetailsImpl;

  factory _SubscriptionDetails.fromJson(Map<String, dynamic> json) =
      _$SubscriptionDetailsImpl.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  String get title;
  @override
  int get amount;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of SubscriptionDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionDetailsImplCopyWith<_$SubscriptionDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
