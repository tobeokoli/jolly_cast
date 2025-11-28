// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editors_pick_response_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EditorsPickResponseDao _$EditorsPickResponseDaoFromJson(
  Map<String, dynamic> json,
) {
  return _EditorsPickResponseDao.fromJson(json);
}

/// @nodoc
mixin _$EditorsPickResponseDao {
  String? get message => throw _privateConstructorUsedError;
  Episode? get data => throw _privateConstructorUsedError;

  /// Serializes this EditorsPickResponseDao to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditorsPickResponseDao
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditorsPickResponseDaoCopyWith<EditorsPickResponseDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorsPickResponseDaoCopyWith<$Res> {
  factory $EditorsPickResponseDaoCopyWith(
    EditorsPickResponseDao value,
    $Res Function(EditorsPickResponseDao) then,
  ) = _$EditorsPickResponseDaoCopyWithImpl<$Res, EditorsPickResponseDao>;
  @useResult
  $Res call({String? message, Episode? data});

  $EpisodeCopyWith<$Res>? get data;
}

/// @nodoc
class _$EditorsPickResponseDaoCopyWithImpl<
  $Res,
  $Val extends EditorsPickResponseDao
>
    implements $EditorsPickResponseDaoCopyWith<$Res> {
  _$EditorsPickResponseDaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditorsPickResponseDao
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed, Object? data = freezed}) {
    return _then(
      _value.copyWith(
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as Episode?,
          )
          as $Val,
    );
  }

  /// Create a copy of EditorsPickResponseDao
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpisodeCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $EpisodeCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditorsPickResponseDaoImplCopyWith<$Res>
    implements $EditorsPickResponseDaoCopyWith<$Res> {
  factory _$$EditorsPickResponseDaoImplCopyWith(
    _$EditorsPickResponseDaoImpl value,
    $Res Function(_$EditorsPickResponseDaoImpl) then,
  ) = __$$EditorsPickResponseDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Episode? data});

  @override
  $EpisodeCopyWith<$Res>? get data;
}

/// @nodoc
class __$$EditorsPickResponseDaoImplCopyWithImpl<$Res>
    extends
        _$EditorsPickResponseDaoCopyWithImpl<$Res, _$EditorsPickResponseDaoImpl>
    implements _$$EditorsPickResponseDaoImplCopyWith<$Res> {
  __$$EditorsPickResponseDaoImplCopyWithImpl(
    _$EditorsPickResponseDaoImpl _value,
    $Res Function(_$EditorsPickResponseDaoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditorsPickResponseDao
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed, Object? data = freezed}) {
    return _then(
      _$EditorsPickResponseDaoImpl(
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        data: freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Episode?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EditorsPickResponseDaoImpl implements _EditorsPickResponseDao {
  const _$EditorsPickResponseDaoImpl({this.message, this.data});

  factory _$EditorsPickResponseDaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditorsPickResponseDaoImplFromJson(json);

  @override
  final String? message;
  @override
  final Episode? data;

  @override
  String toString() {
    return 'EditorsPickResponseDao(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorsPickResponseDaoImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of EditorsPickResponseDao
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorsPickResponseDaoImplCopyWith<_$EditorsPickResponseDaoImpl>
  get copyWith =>
      __$$EditorsPickResponseDaoImplCopyWithImpl<_$EditorsPickResponseDaoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EditorsPickResponseDaoImplToJson(this);
  }
}

abstract class _EditorsPickResponseDao implements EditorsPickResponseDao {
  const factory _EditorsPickResponseDao({
    final String? message,
    final Episode? data,
  }) = _$EditorsPickResponseDaoImpl;

  factory _EditorsPickResponseDao.fromJson(Map<String, dynamic> json) =
      _$EditorsPickResponseDaoImpl.fromJson;

  @override
  String? get message;
  @override
  Episode? get data;

  /// Create a copy of EditorsPickResponseDao
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditorsPickResponseDaoImplCopyWith<_$EditorsPickResponseDaoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
