// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'podcast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Podcast _$PodcastFromJson(Map<String, dynamic> json) {
  return _Podcast.fromJson(json);
}

/// @nodoc
mixin _$Podcast {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_type')
  String? get categoryType => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture_url')
  String? get pictureUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_picture_url')
  String? get coverPictureUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'embeddable_player_settings')
  dynamic get embeddablePlayerSettings => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  Publisher? get publisher => throw _privateConstructorUsedError;

  /// Serializes this Podcast to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Podcast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PodcastCopyWith<Podcast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastCopyWith<$Res> {
  factory $PodcastCopyWith(Podcast value, $Res Function(Podcast) then) =
      _$PodcastCopyWithImpl<$Res, Podcast>;
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    String? title,
    String? author,
    @JsonKey(name: 'category_name') String? categoryName,
    @JsonKey(name: 'category_type') String? categoryType,
    @JsonKey(name: 'picture_url') String? pictureUrl,
    @JsonKey(name: 'cover_picture_url') String? coverPictureUrl,
    String? description,
    @JsonKey(name: 'embeddable_player_settings')
    dynamic embeddablePlayerSettings,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    Publisher? publisher,
  });

  $PublisherCopyWith<$Res>? get publisher;
}

/// @nodoc
class _$PodcastCopyWithImpl<$Res, $Val extends Podcast>
    implements $PodcastCopyWith<$Res> {
  _$PodcastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Podcast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? categoryName = freezed,
    Object? categoryType = freezed,
    Object? pictureUrl = freezed,
    Object? coverPictureUrl = freezed,
    Object? description = freezed,
    Object? embeddablePlayerSettings = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? publisher = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            author: freezed == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                      as String?,
            categoryName: freezed == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                      as String?,
            categoryType: freezed == categoryType
                ? _value.categoryType
                : categoryType // ignore: cast_nullable_to_non_nullable
                      as String?,
            pictureUrl: freezed == pictureUrl
                ? _value.pictureUrl
                : pictureUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            coverPictureUrl: freezed == coverPictureUrl
                ? _value.coverPictureUrl
                : coverPictureUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            embeddablePlayerSettings: freezed == embeddablePlayerSettings
                ? _value.embeddablePlayerSettings
                : embeddablePlayerSettings // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            publisher: freezed == publisher
                ? _value.publisher
                : publisher // ignore: cast_nullable_to_non_nullable
                      as Publisher?,
          )
          as $Val,
    );
  }

  /// Create a copy of Podcast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublisherCopyWith<$Res>? get publisher {
    if (_value.publisher == null) {
      return null;
    }

    return $PublisherCopyWith<$Res>(_value.publisher!, (value) {
      return _then(_value.copyWith(publisher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PodcastImplCopyWith<$Res> implements $PodcastCopyWith<$Res> {
  factory _$$PodcastImplCopyWith(
    _$PodcastImpl value,
    $Res Function(_$PodcastImpl) then,
  ) = __$$PodcastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    String? title,
    String? author,
    @JsonKey(name: 'category_name') String? categoryName,
    @JsonKey(name: 'category_type') String? categoryType,
    @JsonKey(name: 'picture_url') String? pictureUrl,
    @JsonKey(name: 'cover_picture_url') String? coverPictureUrl,
    String? description,
    @JsonKey(name: 'embeddable_player_settings')
    dynamic embeddablePlayerSettings,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    Publisher? publisher,
  });

  @override
  $PublisherCopyWith<$Res>? get publisher;
}

/// @nodoc
class __$$PodcastImplCopyWithImpl<$Res>
    extends _$PodcastCopyWithImpl<$Res, _$PodcastImpl>
    implements _$$PodcastImplCopyWith<$Res> {
  __$$PodcastImplCopyWithImpl(
    _$PodcastImpl _value,
    $Res Function(_$PodcastImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Podcast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? categoryName = freezed,
    Object? categoryType = freezed,
    Object? pictureUrl = freezed,
    Object? coverPictureUrl = freezed,
    Object? description = freezed,
    Object? embeddablePlayerSettings = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? publisher = freezed,
  }) {
    return _then(
      _$PodcastImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        author: freezed == author
            ? _value.author
            : author // ignore: cast_nullable_to_non_nullable
                  as String?,
        categoryName: freezed == categoryName
            ? _value.categoryName
            : categoryName // ignore: cast_nullable_to_non_nullable
                  as String?,
        categoryType: freezed == categoryType
            ? _value.categoryType
            : categoryType // ignore: cast_nullable_to_non_nullable
                  as String?,
        pictureUrl: freezed == pictureUrl
            ? _value.pictureUrl
            : pictureUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        coverPictureUrl: freezed == coverPictureUrl
            ? _value.coverPictureUrl
            : coverPictureUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        embeddablePlayerSettings: freezed == embeddablePlayerSettings
            ? _value.embeddablePlayerSettings
            : embeddablePlayerSettings // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        publisher: freezed == publisher
            ? _value.publisher
            : publisher // ignore: cast_nullable_to_non_nullable
                  as Publisher?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PodcastImpl implements _Podcast {
  const _$PodcastImpl({
    this.id,
    @JsonKey(name: 'user_id') this.userId,
    this.title,
    this.author,
    @JsonKey(name: 'category_name') this.categoryName,
    @JsonKey(name: 'category_type') this.categoryType,
    @JsonKey(name: 'picture_url') this.pictureUrl,
    @JsonKey(name: 'cover_picture_url') this.coverPictureUrl,
    this.description,
    @JsonKey(name: 'embeddable_player_settings') this.embeddablePlayerSettings,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    this.publisher,
  });

  factory _$PodcastImpl.fromJson(Map<String, dynamic> json) =>
      _$$PodcastImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final String? title;
  @override
  final String? author;
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @override
  @JsonKey(name: 'category_type')
  final String? categoryType;
  @override
  @JsonKey(name: 'picture_url')
  final String? pictureUrl;
  @override
  @JsonKey(name: 'cover_picture_url')
  final String? coverPictureUrl;
  @override
  final String? description;
  @override
  @JsonKey(name: 'embeddable_player_settings')
  final dynamic embeddablePlayerSettings;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  final Publisher? publisher;

  @override
  String toString() {
    return 'Podcast(id: $id, userId: $userId, title: $title, author: $author, categoryName: $categoryName, categoryType: $categoryType, pictureUrl: $pictureUrl, coverPictureUrl: $coverPictureUrl, description: $description, embeddablePlayerSettings: $embeddablePlayerSettings, createdAt: $createdAt, updatedAt: $updatedAt, publisher: $publisher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PodcastImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType) &&
            (identical(other.pictureUrl, pictureUrl) ||
                other.pictureUrl == pictureUrl) &&
            (identical(other.coverPictureUrl, coverPictureUrl) ||
                other.coverPictureUrl == coverPictureUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
              other.embeddablePlayerSettings,
              embeddablePlayerSettings,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    title,
    author,
    categoryName,
    categoryType,
    pictureUrl,
    coverPictureUrl,
    description,
    const DeepCollectionEquality().hash(embeddablePlayerSettings),
    createdAt,
    updatedAt,
    publisher,
  );

  /// Create a copy of Podcast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PodcastImplCopyWith<_$PodcastImpl> get copyWith =>
      __$$PodcastImplCopyWithImpl<_$PodcastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PodcastImplToJson(this);
  }
}

abstract class _Podcast implements Podcast {
  const factory _Podcast({
    final int? id,
    @JsonKey(name: 'user_id') final int? userId,
    final String? title,
    final String? author,
    @JsonKey(name: 'category_name') final String? categoryName,
    @JsonKey(name: 'category_type') final String? categoryType,
    @JsonKey(name: 'picture_url') final String? pictureUrl,
    @JsonKey(name: 'cover_picture_url') final String? coverPictureUrl,
    final String? description,
    @JsonKey(name: 'embeddable_player_settings')
    final dynamic embeddablePlayerSettings,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'updated_at') final String? updatedAt,
    final Publisher? publisher,
  }) = _$PodcastImpl;

  factory _Podcast.fromJson(Map<String, dynamic> json) = _$PodcastImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  String? get title;
  @override
  String? get author;
  @override
  @JsonKey(name: 'category_name')
  String? get categoryName;
  @override
  @JsonKey(name: 'category_type')
  String? get categoryType;
  @override
  @JsonKey(name: 'picture_url')
  String? get pictureUrl;
  @override
  @JsonKey(name: 'cover_picture_url')
  String? get coverPictureUrl;
  @override
  String? get description;
  @override
  @JsonKey(name: 'embeddable_player_settings')
  dynamic get embeddablePlayerSettings;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  Publisher? get publisher;

  /// Create a copy of Podcast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PodcastImplCopyWith<_$PodcastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
