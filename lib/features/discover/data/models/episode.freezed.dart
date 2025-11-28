// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return _Episode.fromJson(json);
}

/// @nodoc
mixin _$Episode {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'podcast_id')
  int? get podcastId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content_url')
  String? get contentUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get season => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture_url')
  String? get pictureUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get explicit => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_rating')
  double? get averageRating => throw _privateConstructorUsedError;
  Podcast? get podcast => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_at')
  String? get publishedAt => throw _privateConstructorUsedError;

  /// Serializes this Episode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res, Episode>;
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'podcast_id') int? podcastId,
    @JsonKey(name: 'content_url') String? contentUrl,
    String? title,
    String? season,
    String? number,
    @JsonKey(name: 'picture_url') String? pictureUrl,
    String? description,
    bool? explicit,
    int? duration,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'average_rating') double? averageRating,
    Podcast? podcast,
    @JsonKey(name: 'published_at') String? publishedAt,
  });

  $PodcastCopyWith<$Res>? get podcast;
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res, $Val extends Episode>
    implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? podcastId = freezed,
    Object? contentUrl = freezed,
    Object? title = freezed,
    Object? season = freezed,
    Object? number = freezed,
    Object? pictureUrl = freezed,
    Object? description = freezed,
    Object? explicit = freezed,
    Object? duration = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? averageRating = freezed,
    Object? podcast = freezed,
    Object? publishedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            podcastId: freezed == podcastId
                ? _value.podcastId
                : podcastId // ignore: cast_nullable_to_non_nullable
                      as int?,
            contentUrl: freezed == contentUrl
                ? _value.contentUrl
                : contentUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            season: freezed == season
                ? _value.season
                : season // ignore: cast_nullable_to_non_nullable
                      as String?,
            number: freezed == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                      as String?,
            pictureUrl: freezed == pictureUrl
                ? _value.pictureUrl
                : pictureUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            explicit: freezed == explicit
                ? _value.explicit
                : explicit // ignore: cast_nullable_to_non_nullable
                      as bool?,
            duration: freezed == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                      as int?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            averageRating: freezed == averageRating
                ? _value.averageRating
                : averageRating // ignore: cast_nullable_to_non_nullable
                      as double?,
            podcast: freezed == podcast
                ? _value.podcast
                : podcast // ignore: cast_nullable_to_non_nullable
                      as Podcast?,
            publishedAt: freezed == publishedAt
                ? _value.publishedAt
                : publishedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PodcastCopyWith<$Res>? get podcast {
    if (_value.podcast == null) {
      return null;
    }

    return $PodcastCopyWith<$Res>(_value.podcast!, (value) {
      return _then(_value.copyWith(podcast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodeImplCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$$EpisodeImplCopyWith(
    _$EpisodeImpl value,
    $Res Function(_$EpisodeImpl) then,
  ) = __$$EpisodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'podcast_id') int? podcastId,
    @JsonKey(name: 'content_url') String? contentUrl,
    String? title,
    String? season,
    String? number,
    @JsonKey(name: 'picture_url') String? pictureUrl,
    String? description,
    bool? explicit,
    int? duration,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'average_rating') double? averageRating,
    Podcast? podcast,
    @JsonKey(name: 'published_at') String? publishedAt,
  });

  @override
  $PodcastCopyWith<$Res>? get podcast;
}

/// @nodoc
class __$$EpisodeImplCopyWithImpl<$Res>
    extends _$EpisodeCopyWithImpl<$Res, _$EpisodeImpl>
    implements _$$EpisodeImplCopyWith<$Res> {
  __$$EpisodeImplCopyWithImpl(
    _$EpisodeImpl _value,
    $Res Function(_$EpisodeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? podcastId = freezed,
    Object? contentUrl = freezed,
    Object? title = freezed,
    Object? season = freezed,
    Object? number = freezed,
    Object? pictureUrl = freezed,
    Object? description = freezed,
    Object? explicit = freezed,
    Object? duration = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? averageRating = freezed,
    Object? podcast = freezed,
    Object? publishedAt = freezed,
  }) {
    return _then(
      _$EpisodeImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        podcastId: freezed == podcastId
            ? _value.podcastId
            : podcastId // ignore: cast_nullable_to_non_nullable
                  as int?,
        contentUrl: freezed == contentUrl
            ? _value.contentUrl
            : contentUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        season: freezed == season
            ? _value.season
            : season // ignore: cast_nullable_to_non_nullable
                  as String?,
        number: freezed == number
            ? _value.number
            : number // ignore: cast_nullable_to_non_nullable
                  as String?,
        pictureUrl: freezed == pictureUrl
            ? _value.pictureUrl
            : pictureUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        explicit: freezed == explicit
            ? _value.explicit
            : explicit // ignore: cast_nullable_to_non_nullable
                  as bool?,
        duration: freezed == duration
            ? _value.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        averageRating: freezed == averageRating
            ? _value.averageRating
            : averageRating // ignore: cast_nullable_to_non_nullable
                  as double?,
        podcast: freezed == podcast
            ? _value.podcast
            : podcast // ignore: cast_nullable_to_non_nullable
                  as Podcast?,
        publishedAt: freezed == publishedAt
            ? _value.publishedAt
            : publishedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeImpl implements _Episode {
  const _$EpisodeImpl({
    this.id,
    @JsonKey(name: 'podcast_id') this.podcastId,
    @JsonKey(name: 'content_url') this.contentUrl,
    this.title,
    this.season,
    this.number,
    @JsonKey(name: 'picture_url') this.pictureUrl,
    this.description,
    this.explicit,
    this.duration,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    @JsonKey(name: 'average_rating') this.averageRating,
    this.podcast,
    @JsonKey(name: 'published_at') this.publishedAt,
  });

  factory _$EpisodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'podcast_id')
  final int? podcastId;
  @override
  @JsonKey(name: 'content_url')
  final String? contentUrl;
  @override
  final String? title;
  @override
  final String? season;
  @override
  final String? number;
  @override
  @JsonKey(name: 'picture_url')
  final String? pictureUrl;
  @override
  final String? description;
  @override
  final bool? explicit;
  @override
  final int? duration;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'average_rating')
  final double? averageRating;
  @override
  final Podcast? podcast;
  @override
  @JsonKey(name: 'published_at')
  final String? publishedAt;

  @override
  String toString() {
    return 'Episode(id: $id, podcastId: $podcastId, contentUrl: $contentUrl, title: $title, season: $season, number: $number, pictureUrl: $pictureUrl, description: $description, explicit: $explicit, duration: $duration, createdAt: $createdAt, updatedAt: $updatedAt, averageRating: $averageRating, podcast: $podcast, publishedAt: $publishedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.podcastId, podcastId) ||
                other.podcastId == podcastId) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.pictureUrl, pictureUrl) ||
                other.pictureUrl == pictureUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.explicit, explicit) ||
                other.explicit == explicit) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.podcast, podcast) || other.podcast == podcast) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    podcastId,
    contentUrl,
    title,
    season,
    number,
    pictureUrl,
    description,
    explicit,
    duration,
    createdAt,
    updatedAt,
    averageRating,
    podcast,
    publishedAt,
  );

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      __$$EpisodeImplCopyWithImpl<_$EpisodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeImplToJson(this);
  }
}

abstract class _Episode implements Episode {
  const factory _Episode({
    final int? id,
    @JsonKey(name: 'podcast_id') final int? podcastId,
    @JsonKey(name: 'content_url') final String? contentUrl,
    final String? title,
    final String? season,
    final String? number,
    @JsonKey(name: 'picture_url') final String? pictureUrl,
    final String? description,
    final bool? explicit,
    final int? duration,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'updated_at') final String? updatedAt,
    @JsonKey(name: 'average_rating') final double? averageRating,
    final Podcast? podcast,
    @JsonKey(name: 'published_at') final String? publishedAt,
  }) = _$EpisodeImpl;

  factory _Episode.fromJson(Map<String, dynamic> json) = _$EpisodeImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'podcast_id')
  int? get podcastId;
  @override
  @JsonKey(name: 'content_url')
  String? get contentUrl;
  @override
  String? get title;
  @override
  String? get season;
  @override
  String? get number;
  @override
  @JsonKey(name: 'picture_url')
  String? get pictureUrl;
  @override
  String? get description;
  @override
  bool? get explicit;
  @override
  int? get duration;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'average_rating')
  double? get averageRating;
  @override
  Podcast? get podcast;
  @override
  @JsonKey(name: 'published_at')
  String? get publishedAt;

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
