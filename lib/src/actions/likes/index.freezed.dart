// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of likes_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreateLikeTearOff {
  const _$CreateLikeTearOff();

// ignore: unused_element
  CreateLike$ call({@required String parentId, @required LikeType type}) {
    return CreateLike$(
      parentId: parentId,
      type: type,
    );
  }

// ignore: unused_element
  CreateLikeSuccessful successful(@nullable Like like) {
    return CreateLikeSuccessful(
      like,
    );
  }

// ignore: unused_element
  CreateLikeError error(Object error) {
    return CreateLikeError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateLike = _$CreateLikeTearOff();

/// @nodoc
mixin _$CreateLike {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String parentId, LikeType type), {
    @required Result successful(@nullable Like like),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String parentId, LikeType type), {
    Result successful(@nullable Like like),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreateLike$ value), {
    @required Result successful(CreateLikeSuccessful value),
    @required Result error(CreateLikeError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateLike$ value), {
    Result successful(CreateLikeSuccessful value),
    Result error(CreateLikeError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CreateLikeCopyWith<$Res> {
  factory $CreateLikeCopyWith(
          CreateLike value, $Res Function(CreateLike) then) =
      _$CreateLikeCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateLikeCopyWithImpl<$Res> implements $CreateLikeCopyWith<$Res> {
  _$CreateLikeCopyWithImpl(this._value, this._then);

  final CreateLike _value;
  // ignore: unused_field
  final $Res Function(CreateLike) _then;
}

/// @nodoc
abstract class $CreateLike$CopyWith<$Res> {
  factory $CreateLike$CopyWith(
          CreateLike$ value, $Res Function(CreateLike$) then) =
      _$CreateLike$CopyWithImpl<$Res>;
  $Res call({String parentId, LikeType type});
}

/// @nodoc
class _$CreateLike$CopyWithImpl<$Res> extends _$CreateLikeCopyWithImpl<$Res>
    implements $CreateLike$CopyWith<$Res> {
  _$CreateLike$CopyWithImpl(
      CreateLike$ _value, $Res Function(CreateLike$) _then)
      : super(_value, (v) => _then(v as CreateLike$));

  @override
  CreateLike$ get _value => super._value as CreateLike$;

  @override
  $Res call({
    Object parentId = freezed,
    Object type = freezed,
  }) {
    return _then(CreateLike$(
      parentId: parentId == freezed ? _value.parentId : parentId as String,
      type: type == freezed ? _value.type : type as LikeType,
    ));
  }
}

/// @nodoc
class _$CreateLike$ implements CreateLike$ {
  const _$CreateLike$({@required this.parentId, @required this.type})
      : assert(parentId != null),
        assert(type != null);

  @override
  final String parentId;
  @override
  final LikeType type;

  @override
  String toString() {
    return 'CreateLike(parentId: $parentId, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateLike$ &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(type);

  @override
  $CreateLike$CopyWith<CreateLike$> get copyWith =>
      _$CreateLike$CopyWithImpl<CreateLike$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String parentId, LikeType type), {
    @required Result successful(@nullable Like like),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(parentId, type);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String parentId, LikeType type), {
    Result successful(@nullable Like like),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(parentId, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreateLike$ value), {
    @required Result successful(CreateLikeSuccessful value),
    @required Result error(CreateLikeError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateLike$ value), {
    Result successful(CreateLikeSuccessful value),
    Result error(CreateLikeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateLike$ implements CreateLike {
  const factory CreateLike$(
      {@required String parentId, @required LikeType type}) = _$CreateLike$;

  String get parentId;
  LikeType get type;
  $CreateLike$CopyWith<CreateLike$> get copyWith;
}

/// @nodoc
abstract class $CreateLikeSuccessfulCopyWith<$Res> {
  factory $CreateLikeSuccessfulCopyWith(CreateLikeSuccessful value,
          $Res Function(CreateLikeSuccessful) then) =
      _$CreateLikeSuccessfulCopyWithImpl<$Res>;
  $Res call({@nullable Like like});
}

/// @nodoc
class _$CreateLikeSuccessfulCopyWithImpl<$Res>
    extends _$CreateLikeCopyWithImpl<$Res>
    implements $CreateLikeSuccessfulCopyWith<$Res> {
  _$CreateLikeSuccessfulCopyWithImpl(
      CreateLikeSuccessful _value, $Res Function(CreateLikeSuccessful) _then)
      : super(_value, (v) => _then(v as CreateLikeSuccessful));

  @override
  CreateLikeSuccessful get _value => super._value as CreateLikeSuccessful;

  @override
  $Res call({
    Object like = freezed,
  }) {
    return _then(CreateLikeSuccessful(
      like == freezed ? _value.like : like as Like,
    ));
  }
}

/// @nodoc
class _$CreateLikeSuccessful implements CreateLikeSuccessful {
  const _$CreateLikeSuccessful(@nullable this.like);

  @override
  @nullable
  final Like like;

  @override
  String toString() {
    return 'CreateLike.successful(like: $like)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateLikeSuccessful &&
            (identical(other.like, like) ||
                const DeepCollectionEquality().equals(other.like, like)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(like);

  @override
  $CreateLikeSuccessfulCopyWith<CreateLikeSuccessful> get copyWith =>
      _$CreateLikeSuccessfulCopyWithImpl<CreateLikeSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String parentId, LikeType type), {
    @required Result successful(@nullable Like like),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(like);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String parentId, LikeType type), {
    Result successful(@nullable Like like),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(like);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreateLike$ value), {
    @required Result successful(CreateLikeSuccessful value),
    @required Result error(CreateLikeError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateLike$ value), {
    Result successful(CreateLikeSuccessful value),
    Result error(CreateLikeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateLikeSuccessful implements CreateLike {
  const factory CreateLikeSuccessful(@nullable Like like) =
      _$CreateLikeSuccessful;

  @nullable
  Like get like;
  $CreateLikeSuccessfulCopyWith<CreateLikeSuccessful> get copyWith;
}

/// @nodoc
abstract class $CreateLikeErrorCopyWith<$Res> {
  factory $CreateLikeErrorCopyWith(
          CreateLikeError value, $Res Function(CreateLikeError) then) =
      _$CreateLikeErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$CreateLikeErrorCopyWithImpl<$Res> extends _$CreateLikeCopyWithImpl<$Res>
    implements $CreateLikeErrorCopyWith<$Res> {
  _$CreateLikeErrorCopyWithImpl(
      CreateLikeError _value, $Res Function(CreateLikeError) _then)
      : super(_value, (v) => _then(v as CreateLikeError));

  @override
  CreateLikeError get _value => super._value as CreateLikeError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CreateLikeError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$CreateLikeError implements CreateLikeError {
  const _$CreateLikeError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'CreateLike.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateLikeError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CreateLikeErrorCopyWith<CreateLikeError> get copyWith =>
      _$CreateLikeErrorCopyWithImpl<CreateLikeError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String parentId, LikeType type), {
    @required Result successful(@nullable Like like),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String parentId, LikeType type), {
    Result successful(@nullable Like like),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreateLike$ value), {
    @required Result successful(CreateLikeSuccessful value),
    @required Result error(CreateLikeError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateLike$ value), {
    Result successful(CreateLikeSuccessful value),
    Result error(CreateLikeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateLikeError implements CreateLike, ErrorAction {
  const factory CreateLikeError(Object error) = _$CreateLikeError;

  Object get error;
  $CreateLikeErrorCopyWith<CreateLikeError> get copyWith;
}

/// @nodoc
class _$GetLikesTearOff {
  const _$GetLikesTearOff();

// ignore: unused_element
  GetLikes$ call({@required String parentId}) {
    return GetLikes$(
      parentId: parentId,
    );
  }

// ignore: unused_element
  GetLikesSuccessful successful(List<Like> likes) {
    return GetLikesSuccessful(
      likes,
    );
  }

// ignore: unused_element
  GetLikesError error(Object error) {
    return GetLikesError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetLikes = _$GetLikesTearOff();

/// @nodoc
mixin _$GetLikes {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String parentId), {
    @required Result successful(List<Like> likes),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String parentId), {
    Result successful(List<Like> likes),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetLikes$ value), {
    @required Result successful(GetLikesSuccessful value),
    @required Result error(GetLikesError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetLikes$ value), {
    Result successful(GetLikesSuccessful value),
    Result error(GetLikesError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetLikesCopyWith<$Res> {
  factory $GetLikesCopyWith(GetLikes value, $Res Function(GetLikes) then) =
      _$GetLikesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLikesCopyWithImpl<$Res> implements $GetLikesCopyWith<$Res> {
  _$GetLikesCopyWithImpl(this._value, this._then);

  final GetLikes _value;
  // ignore: unused_field
  final $Res Function(GetLikes) _then;
}

/// @nodoc
abstract class $GetLikes$CopyWith<$Res> {
  factory $GetLikes$CopyWith(GetLikes$ value, $Res Function(GetLikes$) then) =
      _$GetLikes$CopyWithImpl<$Res>;
  $Res call({String parentId});
}

/// @nodoc
class _$GetLikes$CopyWithImpl<$Res> extends _$GetLikesCopyWithImpl<$Res>
    implements $GetLikes$CopyWith<$Res> {
  _$GetLikes$CopyWithImpl(GetLikes$ _value, $Res Function(GetLikes$) _then)
      : super(_value, (v) => _then(v as GetLikes$));

  @override
  GetLikes$ get _value => super._value as GetLikes$;

  @override
  $Res call({
    Object parentId = freezed,
  }) {
    return _then(GetLikes$(
      parentId: parentId == freezed ? _value.parentId : parentId as String,
    ));
  }
}

/// @nodoc
class _$GetLikes$ implements GetLikes$ {
  const _$GetLikes$({@required this.parentId}) : assert(parentId != null);

  @override
  final String parentId;

  @override
  String toString() {
    return 'GetLikes(parentId: $parentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetLikes$ &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(parentId);

  @override
  $GetLikes$CopyWith<GetLikes$> get copyWith =>
      _$GetLikes$CopyWithImpl<GetLikes$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String parentId), {
    @required Result successful(List<Like> likes),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(parentId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String parentId), {
    Result successful(List<Like> likes),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(parentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetLikes$ value), {
    @required Result successful(GetLikesSuccessful value),
    @required Result error(GetLikesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetLikes$ value), {
    Result successful(GetLikesSuccessful value),
    Result error(GetLikesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetLikes$ implements GetLikes {
  const factory GetLikes$({@required String parentId}) = _$GetLikes$;

  String get parentId;
  $GetLikes$CopyWith<GetLikes$> get copyWith;
}

/// @nodoc
abstract class $GetLikesSuccessfulCopyWith<$Res> {
  factory $GetLikesSuccessfulCopyWith(
          GetLikesSuccessful value, $Res Function(GetLikesSuccessful) then) =
      _$GetLikesSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Like> likes});
}

/// @nodoc
class _$GetLikesSuccessfulCopyWithImpl<$Res>
    extends _$GetLikesCopyWithImpl<$Res>
    implements $GetLikesSuccessfulCopyWith<$Res> {
  _$GetLikesSuccessfulCopyWithImpl(
      GetLikesSuccessful _value, $Res Function(GetLikesSuccessful) _then)
      : super(_value, (v) => _then(v as GetLikesSuccessful));

  @override
  GetLikesSuccessful get _value => super._value as GetLikesSuccessful;

  @override
  $Res call({
    Object likes = freezed,
  }) {
    return _then(GetLikesSuccessful(
      likes == freezed ? _value.likes : likes as List<Like>,
    ));
  }
}

/// @nodoc
class _$GetLikesSuccessful implements GetLikesSuccessful {
  const _$GetLikesSuccessful(this.likes) : assert(likes != null);

  @override
  final List<Like> likes;

  @override
  String toString() {
    return 'GetLikes.successful(likes: $likes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetLikesSuccessful &&
            (identical(other.likes, likes) ||
                const DeepCollectionEquality().equals(other.likes, likes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(likes);

  @override
  $GetLikesSuccessfulCopyWith<GetLikesSuccessful> get copyWith =>
      _$GetLikesSuccessfulCopyWithImpl<GetLikesSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String parentId), {
    @required Result successful(List<Like> likes),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(likes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String parentId), {
    Result successful(List<Like> likes),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(likes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetLikes$ value), {
    @required Result successful(GetLikesSuccessful value),
    @required Result error(GetLikesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetLikes$ value), {
    Result successful(GetLikesSuccessful value),
    Result error(GetLikesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetLikesSuccessful implements GetLikes {
  const factory GetLikesSuccessful(List<Like> likes) = _$GetLikesSuccessful;

  List<Like> get likes;
  $GetLikesSuccessfulCopyWith<GetLikesSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetLikesErrorCopyWith<$Res> {
  factory $GetLikesErrorCopyWith(
          GetLikesError value, $Res Function(GetLikesError) then) =
      _$GetLikesErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetLikesErrorCopyWithImpl<$Res> extends _$GetLikesCopyWithImpl<$Res>
    implements $GetLikesErrorCopyWith<$Res> {
  _$GetLikesErrorCopyWithImpl(
      GetLikesError _value, $Res Function(GetLikesError) _then)
      : super(_value, (v) => _then(v as GetLikesError));

  @override
  GetLikesError get _value => super._value as GetLikesError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetLikesError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetLikesError implements GetLikesError {
  const _$GetLikesError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetLikes.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetLikesError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetLikesErrorCopyWith<GetLikesError> get copyWith =>
      _$GetLikesErrorCopyWithImpl<GetLikesError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String parentId), {
    @required Result successful(List<Like> likes),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String parentId), {
    Result successful(List<Like> likes),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetLikes$ value), {
    @required Result successful(GetLikesSuccessful value),
    @required Result error(GetLikesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetLikes$ value), {
    Result successful(GetLikesSuccessful value),
    Result error(GetLikesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetLikesError implements GetLikes, ErrorAction {
  const factory GetLikesError(Object error) = _$GetLikesError;

  Object get error;
  $GetLikesErrorCopyWith<GetLikesError> get copyWith;
}

/// @nodoc
class _$RemoveLikeTearOff {
  const _$RemoveLikeTearOff();

// ignore: unused_element
  RemoveLike$ call({@required String id, String parentId}) {
    return RemoveLike$(
      id: id,
      parentId: parentId,
    );
  }

// ignore: unused_element
  RemoveLikeSuccessful successful(String parentId) {
    return RemoveLikeSuccessful(
      parentId,
    );
  }

// ignore: unused_element
  RemoveLikeError error(Object error) {
    return RemoveLikeError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RemoveLike = _$RemoveLikeTearOff();

/// @nodoc
mixin _$RemoveLike {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id, String parentId), {
    @required Result successful(String parentId),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id, String parentId), {
    Result successful(String parentId),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(RemoveLike$ value), {
    @required Result successful(RemoveLikeSuccessful value),
    @required Result error(RemoveLikeError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(RemoveLike$ value), {
    Result successful(RemoveLikeSuccessful value),
    Result error(RemoveLikeError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $RemoveLikeCopyWith<$Res> {
  factory $RemoveLikeCopyWith(
          RemoveLike value, $Res Function(RemoveLike) then) =
      _$RemoveLikeCopyWithImpl<$Res>;
}

/// @nodoc
class _$RemoveLikeCopyWithImpl<$Res> implements $RemoveLikeCopyWith<$Res> {
  _$RemoveLikeCopyWithImpl(this._value, this._then);

  final RemoveLike _value;
  // ignore: unused_field
  final $Res Function(RemoveLike) _then;
}

/// @nodoc
abstract class $RemoveLike$CopyWith<$Res> {
  factory $RemoveLike$CopyWith(
          RemoveLike$ value, $Res Function(RemoveLike$) then) =
      _$RemoveLike$CopyWithImpl<$Res>;
  $Res call({String id, String parentId});
}

/// @nodoc
class _$RemoveLike$CopyWithImpl<$Res> extends _$RemoveLikeCopyWithImpl<$Res>
    implements $RemoveLike$CopyWith<$Res> {
  _$RemoveLike$CopyWithImpl(
      RemoveLike$ _value, $Res Function(RemoveLike$) _then)
      : super(_value, (v) => _then(v as RemoveLike$));

  @override
  RemoveLike$ get _value => super._value as RemoveLike$;

  @override
  $Res call({
    Object id = freezed,
    Object parentId = freezed,
  }) {
    return _then(RemoveLike$(
      id: id == freezed ? _value.id : id as String,
      parentId: parentId == freezed ? _value.parentId : parentId as String,
    ));
  }
}

/// @nodoc
class _$RemoveLike$ implements RemoveLike$ {
  const _$RemoveLike$({@required this.id, this.parentId}) : assert(id != null);

  @override
  final String id;
  @override
  final String parentId;

  @override
  String toString() {
    return 'RemoveLike(id: $id, parentId: $parentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveLike$ &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId);

  @override
  $RemoveLike$CopyWith<RemoveLike$> get copyWith =>
      _$RemoveLike$CopyWithImpl<RemoveLike$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id, String parentId), {
    @required Result successful(String parentId),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(id, parentId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id, String parentId), {
    Result successful(String parentId),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(id, parentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(RemoveLike$ value), {
    @required Result successful(RemoveLikeSuccessful value),
    @required Result error(RemoveLikeError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(RemoveLike$ value), {
    Result successful(RemoveLikeSuccessful value),
    Result error(RemoveLikeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RemoveLike$ implements RemoveLike {
  const factory RemoveLike$({@required String id, String parentId}) =
      _$RemoveLike$;

  String get id;
  String get parentId;
  $RemoveLike$CopyWith<RemoveLike$> get copyWith;
}

/// @nodoc
abstract class $RemoveLikeSuccessfulCopyWith<$Res> {
  factory $RemoveLikeSuccessfulCopyWith(RemoveLikeSuccessful value,
          $Res Function(RemoveLikeSuccessful) then) =
      _$RemoveLikeSuccessfulCopyWithImpl<$Res>;
  $Res call({String parentId});
}

/// @nodoc
class _$RemoveLikeSuccessfulCopyWithImpl<$Res>
    extends _$RemoveLikeCopyWithImpl<$Res>
    implements $RemoveLikeSuccessfulCopyWith<$Res> {
  _$RemoveLikeSuccessfulCopyWithImpl(
      RemoveLikeSuccessful _value, $Res Function(RemoveLikeSuccessful) _then)
      : super(_value, (v) => _then(v as RemoveLikeSuccessful));

  @override
  RemoveLikeSuccessful get _value => super._value as RemoveLikeSuccessful;

  @override
  $Res call({
    Object parentId = freezed,
  }) {
    return _then(RemoveLikeSuccessful(
      parentId == freezed ? _value.parentId : parentId as String,
    ));
  }
}

/// @nodoc
class _$RemoveLikeSuccessful implements RemoveLikeSuccessful {
  const _$RemoveLikeSuccessful(this.parentId) : assert(parentId != null);

  @override
  final String parentId;

  @override
  String toString() {
    return 'RemoveLike.successful(parentId: $parentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveLikeSuccessful &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(parentId);

  @override
  $RemoveLikeSuccessfulCopyWith<RemoveLikeSuccessful> get copyWith =>
      _$RemoveLikeSuccessfulCopyWithImpl<RemoveLikeSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id, String parentId), {
    @required Result successful(String parentId),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(parentId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id, String parentId), {
    Result successful(String parentId),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(parentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(RemoveLike$ value), {
    @required Result successful(RemoveLikeSuccessful value),
    @required Result error(RemoveLikeError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(RemoveLike$ value), {
    Result successful(RemoveLikeSuccessful value),
    Result error(RemoveLikeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class RemoveLikeSuccessful implements RemoveLike {
  const factory RemoveLikeSuccessful(String parentId) = _$RemoveLikeSuccessful;

  String get parentId;
  $RemoveLikeSuccessfulCopyWith<RemoveLikeSuccessful> get copyWith;
}

/// @nodoc
abstract class $RemoveLikeErrorCopyWith<$Res> {
  factory $RemoveLikeErrorCopyWith(
          RemoveLikeError value, $Res Function(RemoveLikeError) then) =
      _$RemoveLikeErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$RemoveLikeErrorCopyWithImpl<$Res> extends _$RemoveLikeCopyWithImpl<$Res>
    implements $RemoveLikeErrorCopyWith<$Res> {
  _$RemoveLikeErrorCopyWithImpl(
      RemoveLikeError _value, $Res Function(RemoveLikeError) _then)
      : super(_value, (v) => _then(v as RemoveLikeError));

  @override
  RemoveLikeError get _value => super._value as RemoveLikeError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(RemoveLikeError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$RemoveLikeError implements RemoveLikeError {
  const _$RemoveLikeError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'RemoveLike.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveLikeError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $RemoveLikeErrorCopyWith<RemoveLikeError> get copyWith =>
      _$RemoveLikeErrorCopyWithImpl<RemoveLikeError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id, String parentId), {
    @required Result successful(String parentId),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id, String parentId), {
    Result successful(String parentId),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(RemoveLike$ value), {
    @required Result successful(RemoveLikeSuccessful value),
    @required Result error(RemoveLikeError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(RemoveLike$ value), {
    Result successful(RemoveLikeSuccessful value),
    Result error(RemoveLikeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RemoveLikeError implements RemoveLike, ErrorAction {
  const factory RemoveLikeError(Object error) = _$RemoveLikeError;

  Object get error;
  $RemoveLikeErrorCopyWith<RemoveLikeError> get copyWith;
}
