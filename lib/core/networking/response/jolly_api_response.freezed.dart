// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jolly_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

JollyApiResponse<T> _$JollyApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object?) fromJsonT,
) {
  return _JollyApiResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$JollyApiResponse<T> {
  String get message => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;
  dynamic get rawResponse => throw _privateConstructorUsedError;

  /// Serializes this JollyApiResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of JollyApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JollyApiResponseCopyWith<T, JollyApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JollyApiResponseCopyWith<T, $Res> {
  factory $JollyApiResponseCopyWith(
    JollyApiResponse<T> value,
    $Res Function(JollyApiResponse<T>) then,
  ) = _$JollyApiResponseCopyWithImpl<T, $Res, JollyApiResponse<T>>;
  @useResult
  $Res call({String message, T data, dynamic rawResponse});
}

/// @nodoc
class _$JollyApiResponseCopyWithImpl<T, $Res, $Val extends JollyApiResponse<T>>
    implements $JollyApiResponseCopyWith<T, $Res> {
  _$JollyApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JollyApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = freezed,
    Object? rawResponse = freezed,
  }) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as T,
            rawResponse: freezed == rawResponse
                ? _value.rawResponse
                : rawResponse // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$JollyApiResponseImplCopyWith<T, $Res>
    implements $JollyApiResponseCopyWith<T, $Res> {
  factory _$$JollyApiResponseImplCopyWith(
    _$JollyApiResponseImpl<T> value,
    $Res Function(_$JollyApiResponseImpl<T>) then,
  ) = __$$JollyApiResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String message, T data, dynamic rawResponse});
}

/// @nodoc
class __$$JollyApiResponseImplCopyWithImpl<T, $Res>
    extends _$JollyApiResponseCopyWithImpl<T, $Res, _$JollyApiResponseImpl<T>>
    implements _$$JollyApiResponseImplCopyWith<T, $Res> {
  __$$JollyApiResponseImplCopyWithImpl(
    _$JollyApiResponseImpl<T> _value,
    $Res Function(_$JollyApiResponseImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of JollyApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = freezed,
    Object? rawResponse = freezed,
  }) {
    return _then(
      _$JollyApiResponseImpl<T>(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        data: freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as T,
        rawResponse: freezed == rawResponse
            ? _value.rawResponse
            : rawResponse // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$JollyApiResponseImpl<T> implements _JollyApiResponse<T> {
  const _$JollyApiResponseImpl({
    required this.message,
    required this.data,
    required this.rawResponse,
  });

  factory _$JollyApiResponseImpl.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$$JollyApiResponseImplFromJson(json, fromJsonT);

  @override
  final String message;
  @override
  final T data;
  @override
  final dynamic rawResponse;

  @override
  String toString() {
    return 'JollyApiResponse<$T>(message: $message, data: $data, rawResponse: $rawResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JollyApiResponseImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(
              other.rawResponse,
              rawResponse,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(data),
    const DeepCollectionEquality().hash(rawResponse),
  );

  /// Create a copy of JollyApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JollyApiResponseImplCopyWith<T, _$JollyApiResponseImpl<T>> get copyWith =>
      __$$JollyApiResponseImplCopyWithImpl<T, _$JollyApiResponseImpl<T>>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$JollyApiResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _JollyApiResponse<T> implements JollyApiResponse<T> {
  const factory _JollyApiResponse({
    required final String message,
    required final T data,
    required final dynamic rawResponse,
  }) = _$JollyApiResponseImpl<T>;

  factory _JollyApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) = _$JollyApiResponseImpl<T>.fromJson;

  @override
  String get message;
  @override
  T get data;
  @override
  dynamic get rawResponse;

  /// Create a copy of JollyApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JollyApiResponseImplCopyWith<T, _$JollyApiResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
