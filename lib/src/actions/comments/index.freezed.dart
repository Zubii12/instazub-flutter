// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of comments_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreateCommentTearOff {
  const _$CreateCommentTearOff();

// ignore: unused_element
  CreateComment$ call(
      {@required String senderUid,
      @required String postId,
      @required String text}) {
    return CreateComment$(
      senderUid: senderUid,
      postId: postId,
      text: text,
    );
  }

// ignore: unused_element
  CreateCommentSuccessful successful(Comment comment) {
    return CreateCommentSuccessful(
      comment,
    );
  }

// ignore: unused_element
  CreateCommentError error(Object error) {
    return CreateCommentError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateComment = _$CreateCommentTearOff();

/// @nodoc
mixin _$CreateComment {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String senderUid, String postId, String text), {
    @required Result successful(Comment comment),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String senderUid, String postId, String text), {
    Result successful(Comment comment),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreateComment$ value), {
    @required Result successful(CreateCommentSuccessful value),
    @required Result error(CreateCommentError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateComment$ value), {
    Result successful(CreateCommentSuccessful value),
    Result error(CreateCommentError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CreateCommentCopyWith<$Res> {
  factory $CreateCommentCopyWith(
          CreateComment value, $Res Function(CreateComment) then) =
      _$CreateCommentCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateCommentCopyWithImpl<$Res>
    implements $CreateCommentCopyWith<$Res> {
  _$CreateCommentCopyWithImpl(this._value, this._then);

  final CreateComment _value;
  // ignore: unused_field
  final $Res Function(CreateComment) _then;
}

/// @nodoc
abstract class $CreateComment$CopyWith<$Res> {
  factory $CreateComment$CopyWith(
          CreateComment$ value, $Res Function(CreateComment$) then) =
      _$CreateComment$CopyWithImpl<$Res>;
  $Res call({String senderUid, String postId, String text});
}

/// @nodoc
class _$CreateComment$CopyWithImpl<$Res>
    extends _$CreateCommentCopyWithImpl<$Res>
    implements $CreateComment$CopyWith<$Res> {
  _$CreateComment$CopyWithImpl(
      CreateComment$ _value, $Res Function(CreateComment$) _then)
      : super(_value, (v) => _then(v as CreateComment$));

  @override
  CreateComment$ get _value => super._value as CreateComment$;

  @override
  $Res call({
    Object senderUid = freezed,
    Object postId = freezed,
    Object text = freezed,
  }) {
    return _then(CreateComment$(
      senderUid: senderUid == freezed ? _value.senderUid : senderUid as String,
      postId: postId == freezed ? _value.postId : postId as String,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
class _$CreateComment$ implements CreateComment$ {
  const _$CreateComment$(
      {@required this.senderUid, @required this.postId, @required this.text})
      : assert(senderUid != null),
        assert(postId != null),
        assert(text != null);

  @override
  final String senderUid;
  @override
  final String postId;
  @override
  final String text;

  @override
  String toString() {
    return 'CreateComment(senderUid: $senderUid, postId: $postId, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateComment$ &&
            (identical(other.senderUid, senderUid) ||
                const DeepCollectionEquality()
                    .equals(other.senderUid, senderUid)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(senderUid) ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(text);

  @override
  $CreateComment$CopyWith<CreateComment$> get copyWith =>
      _$CreateComment$CopyWithImpl<CreateComment$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String senderUid, String postId, String text), {
    @required Result successful(Comment comment),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(senderUid, postId, text);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String senderUid, String postId, String text), {
    Result successful(Comment comment),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(senderUid, postId, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreateComment$ value), {
    @required Result successful(CreateCommentSuccessful value),
    @required Result error(CreateCommentError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateComment$ value), {
    Result successful(CreateCommentSuccessful value),
    Result error(CreateCommentError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateComment$ implements CreateComment {
  const factory CreateComment$(
      {@required String senderUid,
      @required String postId,
      @required String text}) = _$CreateComment$;

  String get senderUid;
  String get postId;
  String get text;
  $CreateComment$CopyWith<CreateComment$> get copyWith;
}

/// @nodoc
abstract class $CreateCommentSuccessfulCopyWith<$Res> {
  factory $CreateCommentSuccessfulCopyWith(CreateCommentSuccessful value,
          $Res Function(CreateCommentSuccessful) then) =
      _$CreateCommentSuccessfulCopyWithImpl<$Res>;
  $Res call({Comment comment});
}

/// @nodoc
class _$CreateCommentSuccessfulCopyWithImpl<$Res>
    extends _$CreateCommentCopyWithImpl<$Res>
    implements $CreateCommentSuccessfulCopyWith<$Res> {
  _$CreateCommentSuccessfulCopyWithImpl(CreateCommentSuccessful _value,
      $Res Function(CreateCommentSuccessful) _then)
      : super(_value, (v) => _then(v as CreateCommentSuccessful));

  @override
  CreateCommentSuccessful get _value => super._value as CreateCommentSuccessful;

  @override
  $Res call({
    Object comment = freezed,
  }) {
    return _then(CreateCommentSuccessful(
      comment == freezed ? _value.comment : comment as Comment,
    ));
  }
}

/// @nodoc
class _$CreateCommentSuccessful implements CreateCommentSuccessful {
  const _$CreateCommentSuccessful(this.comment) : assert(comment != null);

  @override
  final Comment comment;

  @override
  String toString() {
    return 'CreateComment.successful(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateCommentSuccessful &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comment);

  @override
  $CreateCommentSuccessfulCopyWith<CreateCommentSuccessful> get copyWith =>
      _$CreateCommentSuccessfulCopyWithImpl<CreateCommentSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String senderUid, String postId, String text), {
    @required Result successful(Comment comment),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(comment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String senderUid, String postId, String text), {
    Result successful(Comment comment),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreateComment$ value), {
    @required Result successful(CreateCommentSuccessful value),
    @required Result error(CreateCommentError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateComment$ value), {
    Result successful(CreateCommentSuccessful value),
    Result error(CreateCommentError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateCommentSuccessful implements CreateComment {
  const factory CreateCommentSuccessful(Comment comment) =
      _$CreateCommentSuccessful;

  Comment get comment;
  $CreateCommentSuccessfulCopyWith<CreateCommentSuccessful> get copyWith;
}

/// @nodoc
abstract class $CreateCommentErrorCopyWith<$Res> {
  factory $CreateCommentErrorCopyWith(
          CreateCommentError value, $Res Function(CreateCommentError) then) =
      _$CreateCommentErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$CreateCommentErrorCopyWithImpl<$Res>
    extends _$CreateCommentCopyWithImpl<$Res>
    implements $CreateCommentErrorCopyWith<$Res> {
  _$CreateCommentErrorCopyWithImpl(
      CreateCommentError _value, $Res Function(CreateCommentError) _then)
      : super(_value, (v) => _then(v as CreateCommentError));

  @override
  CreateCommentError get _value => super._value as CreateCommentError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CreateCommentError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$CreateCommentError implements CreateCommentError {
  const _$CreateCommentError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'CreateComment.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateCommentError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CreateCommentErrorCopyWith<CreateCommentError> get copyWith =>
      _$CreateCommentErrorCopyWithImpl<CreateCommentError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String senderUid, String postId, String text), {
    @required Result successful(Comment comment),
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
    Result $default(String senderUid, String postId, String text), {
    Result successful(Comment comment),
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
    Result $default(CreateComment$ value), {
    @required Result successful(CreateCommentSuccessful value),
    @required Result error(CreateCommentError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateComment$ value), {
    Result successful(CreateCommentSuccessful value),
    Result error(CreateCommentError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateCommentError implements CreateComment, ErrorAction {
  const factory CreateCommentError(Object error) = _$CreateCommentError;

  Object get error;
  $CreateCommentErrorCopyWith<CreateCommentError> get copyWith;
}

/// @nodoc
class _$ListenForCommentsTearOff {
  const _$ListenForCommentsTearOff();

// ignore: unused_element
  ListenForCommentsStart start(String postId) {
    return ListenForCommentsStart(
      postId,
    );
  }

// ignore: unused_element
  ListenForCommentsDone done(String postId) {
    return ListenForCommentsDone(
      postId,
    );
  }

// ignore: unused_element
  OnCommentsEvent event(List<Comment> comments) {
    return OnCommentsEvent(
      comments,
    );
  }

// ignore: unused_element
  _ListenForCommentsError error(Object error) {
    return _ListenForCommentsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ListenForComments = _$ListenForCommentsTearOff();

/// @nodoc
mixin _$ListenForComments {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(String postId),
    @required Result done(String postId),
    @required Result event(List<Comment> comments),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String postId),
    Result done(String postId),
    Result event(List<Comment> comments),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(ListenForCommentsStart value),
    @required Result done(ListenForCommentsDone value),
    @required Result event(OnCommentsEvent value),
    @required Result error(_ListenForCommentsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(ListenForCommentsStart value),
    Result done(ListenForCommentsDone value),
    Result event(OnCommentsEvent value),
    Result error(_ListenForCommentsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ListenForCommentsCopyWith<$Res> {
  factory $ListenForCommentsCopyWith(
          ListenForComments value, $Res Function(ListenForComments) then) =
      _$ListenForCommentsCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForCommentsCopyWithImpl<$Res>
    implements $ListenForCommentsCopyWith<$Res> {
  _$ListenForCommentsCopyWithImpl(this._value, this._then);

  final ListenForComments _value;
  // ignore: unused_field
  final $Res Function(ListenForComments) _then;
}

/// @nodoc
abstract class $ListenForCommentsStartCopyWith<$Res> {
  factory $ListenForCommentsStartCopyWith(ListenForCommentsStart value,
          $Res Function(ListenForCommentsStart) then) =
      _$ListenForCommentsStartCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
class _$ListenForCommentsStartCopyWithImpl<$Res>
    extends _$ListenForCommentsCopyWithImpl<$Res>
    implements $ListenForCommentsStartCopyWith<$Res> {
  _$ListenForCommentsStartCopyWithImpl(ListenForCommentsStart _value,
      $Res Function(ListenForCommentsStart) _then)
      : super(_value, (v) => _then(v as ListenForCommentsStart));

  @override
  ListenForCommentsStart get _value => super._value as ListenForCommentsStart;

  @override
  $Res call({
    Object postId = freezed,
  }) {
    return _then(ListenForCommentsStart(
      postId == freezed ? _value.postId : postId as String,
    ));
  }
}

/// @nodoc
class _$ListenForCommentsStart implements ListenForCommentsStart {
  const _$ListenForCommentsStart(this.postId) : assert(postId != null);

  @override
  final String postId;

  @override
  String toString() {
    return 'ListenForComments.start(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListenForCommentsStart &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postId);

  @override
  $ListenForCommentsStartCopyWith<ListenForCommentsStart> get copyWith =>
      _$ListenForCommentsStartCopyWithImpl<ListenForCommentsStart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(String postId),
    @required Result done(String postId),
    @required Result event(List<Comment> comments),
    @required Result error(Object error),
  }) {
    assert(start != null);
    assert(done != null);
    assert(event != null);
    assert(error != null);
    return start(postId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String postId),
    Result done(String postId),
    Result event(List<Comment> comments),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(ListenForCommentsStart value),
    @required Result done(ListenForCommentsDone value),
    @required Result event(OnCommentsEvent value),
    @required Result error(_ListenForCommentsError value),
  }) {
    assert(start != null);
    assert(done != null);
    assert(event != null);
    assert(error != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(ListenForCommentsStart value),
    Result done(ListenForCommentsDone value),
    Result event(OnCommentsEvent value),
    Result error(_ListenForCommentsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class ListenForCommentsStart implements ListenForComments {
  const factory ListenForCommentsStart(String postId) =
      _$ListenForCommentsStart;

  String get postId;
  $ListenForCommentsStartCopyWith<ListenForCommentsStart> get copyWith;
}

/// @nodoc
abstract class $ListenForCommentsDoneCopyWith<$Res> {
  factory $ListenForCommentsDoneCopyWith(ListenForCommentsDone value,
          $Res Function(ListenForCommentsDone) then) =
      _$ListenForCommentsDoneCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
class _$ListenForCommentsDoneCopyWithImpl<$Res>
    extends _$ListenForCommentsCopyWithImpl<$Res>
    implements $ListenForCommentsDoneCopyWith<$Res> {
  _$ListenForCommentsDoneCopyWithImpl(
      ListenForCommentsDone _value, $Res Function(ListenForCommentsDone) _then)
      : super(_value, (v) => _then(v as ListenForCommentsDone));

  @override
  ListenForCommentsDone get _value => super._value as ListenForCommentsDone;

  @override
  $Res call({
    Object postId = freezed,
  }) {
    return _then(ListenForCommentsDone(
      postId == freezed ? _value.postId : postId as String,
    ));
  }
}

/// @nodoc
class _$ListenForCommentsDone implements ListenForCommentsDone {
  const _$ListenForCommentsDone(this.postId) : assert(postId != null);

  @override
  final String postId;

  @override
  String toString() {
    return 'ListenForComments.done(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListenForCommentsDone &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postId);

  @override
  $ListenForCommentsDoneCopyWith<ListenForCommentsDone> get copyWith =>
      _$ListenForCommentsDoneCopyWithImpl<ListenForCommentsDone>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(String postId),
    @required Result done(String postId),
    @required Result event(List<Comment> comments),
    @required Result error(Object error),
  }) {
    assert(start != null);
    assert(done != null);
    assert(event != null);
    assert(error != null);
    return done(postId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String postId),
    Result done(String postId),
    Result event(List<Comment> comments),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(ListenForCommentsStart value),
    @required Result done(ListenForCommentsDone value),
    @required Result event(OnCommentsEvent value),
    @required Result error(_ListenForCommentsError value),
  }) {
    assert(start != null);
    assert(done != null);
    assert(event != null);
    assert(error != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(ListenForCommentsStart value),
    Result done(ListenForCommentsDone value),
    Result event(OnCommentsEvent value),
    Result error(_ListenForCommentsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class ListenForCommentsDone implements ListenForComments {
  const factory ListenForCommentsDone(String postId) = _$ListenForCommentsDone;

  String get postId;
  $ListenForCommentsDoneCopyWith<ListenForCommentsDone> get copyWith;
}

/// @nodoc
abstract class $OnCommentsEventCopyWith<$Res> {
  factory $OnCommentsEventCopyWith(
          OnCommentsEvent value, $Res Function(OnCommentsEvent) then) =
      _$OnCommentsEventCopyWithImpl<$Res>;
  $Res call({List<Comment> comments});
}

/// @nodoc
class _$OnCommentsEventCopyWithImpl<$Res>
    extends _$ListenForCommentsCopyWithImpl<$Res>
    implements $OnCommentsEventCopyWith<$Res> {
  _$OnCommentsEventCopyWithImpl(
      OnCommentsEvent _value, $Res Function(OnCommentsEvent) _then)
      : super(_value, (v) => _then(v as OnCommentsEvent));

  @override
  OnCommentsEvent get _value => super._value as OnCommentsEvent;

  @override
  $Res call({
    Object comments = freezed,
  }) {
    return _then(OnCommentsEvent(
      comments == freezed ? _value.comments : comments as List<Comment>,
    ));
  }
}

/// @nodoc
class _$OnCommentsEvent implements OnCommentsEvent {
  const _$OnCommentsEvent(this.comments) : assert(comments != null);

  @override
  final List<Comment> comments;

  @override
  String toString() {
    return 'ListenForComments.event(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnCommentsEvent &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comments);

  @override
  $OnCommentsEventCopyWith<OnCommentsEvent> get copyWith =>
      _$OnCommentsEventCopyWithImpl<OnCommentsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(String postId),
    @required Result done(String postId),
    @required Result event(List<Comment> comments),
    @required Result error(Object error),
  }) {
    assert(start != null);
    assert(done != null);
    assert(event != null);
    assert(error != null);
    return event(comments);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String postId),
    Result done(String postId),
    Result event(List<Comment> comments),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (event != null) {
      return event(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(ListenForCommentsStart value),
    @required Result done(ListenForCommentsDone value),
    @required Result event(OnCommentsEvent value),
    @required Result error(_ListenForCommentsError value),
  }) {
    assert(start != null);
    assert(done != null);
    assert(event != null);
    assert(error != null);
    return event(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(ListenForCommentsStart value),
    Result done(ListenForCommentsDone value),
    Result event(OnCommentsEvent value),
    Result error(_ListenForCommentsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class OnCommentsEvent implements ListenForComments {
  const factory OnCommentsEvent(List<Comment> comments) = _$OnCommentsEvent;

  List<Comment> get comments;
  $OnCommentsEventCopyWith<OnCommentsEvent> get copyWith;
}

/// @nodoc
abstract class _$ListenForCommentsErrorCopyWith<$Res> {
  factory _$ListenForCommentsErrorCopyWith(_ListenForCommentsError value,
          $Res Function(_ListenForCommentsError) then) =
      __$ListenForCommentsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class __$ListenForCommentsErrorCopyWithImpl<$Res>
    extends _$ListenForCommentsCopyWithImpl<$Res>
    implements _$ListenForCommentsErrorCopyWith<$Res> {
  __$ListenForCommentsErrorCopyWithImpl(_ListenForCommentsError _value,
      $Res Function(_ListenForCommentsError) _then)
      : super(_value, (v) => _then(v as _ListenForCommentsError));

  @override
  _ListenForCommentsError get _value => super._value as _ListenForCommentsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_ListenForCommentsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$_ListenForCommentsError implements _ListenForCommentsError {
  const _$_ListenForCommentsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'ListenForComments.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListenForCommentsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  _$ListenForCommentsErrorCopyWith<_ListenForCommentsError> get copyWith =>
      __$ListenForCommentsErrorCopyWithImpl<_ListenForCommentsError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(String postId),
    @required Result done(String postId),
    @required Result event(List<Comment> comments),
    @required Result error(Object error),
  }) {
    assert(start != null);
    assert(done != null);
    assert(event != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String postId),
    Result done(String postId),
    Result event(List<Comment> comments),
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
  Result map<Result extends Object>({
    @required Result start(ListenForCommentsStart value),
    @required Result done(ListenForCommentsDone value),
    @required Result event(OnCommentsEvent value),
    @required Result error(_ListenForCommentsError value),
  }) {
    assert(start != null);
    assert(done != null);
    assert(event != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(ListenForCommentsStart value),
    Result done(ListenForCommentsDone value),
    Result event(OnCommentsEvent value),
    Result error(_ListenForCommentsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ListenForCommentsError
    implements ListenForComments, ErrorAction {
  const factory _ListenForCommentsError(Object error) =
      _$_ListenForCommentsError;

  Object get error;
  _$ListenForCommentsErrorCopyWith<_ListenForCommentsError> get copyWith;
}

/// @nodoc
class _$UpdateCommentInfoTearOff {
  const _$UpdateCommentInfoTearOff();

// ignore: unused_element
  UpdateCommentInfo$ call({String postId, String uid}) {
    return UpdateCommentInfo$(
      postId: postId,
      uid: uid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateCommentInfo = _$UpdateCommentInfoTearOff();

/// @nodoc
mixin _$UpdateCommentInfo {
  String get postId;
  String get uid;

  $UpdateCommentInfoCopyWith<UpdateCommentInfo> get copyWith;
}

/// @nodoc
abstract class $UpdateCommentInfoCopyWith<$Res> {
  factory $UpdateCommentInfoCopyWith(
          UpdateCommentInfo value, $Res Function(UpdateCommentInfo) then) =
      _$UpdateCommentInfoCopyWithImpl<$Res>;
  $Res call({String postId, String uid});
}

/// @nodoc
class _$UpdateCommentInfoCopyWithImpl<$Res>
    implements $UpdateCommentInfoCopyWith<$Res> {
  _$UpdateCommentInfoCopyWithImpl(this._value, this._then);

  final UpdateCommentInfo _value;
  // ignore: unused_field
  final $Res Function(UpdateCommentInfo) _then;

  @override
  $Res call({
    Object postId = freezed,
    Object uid = freezed,
  }) {
    return _then(_value.copyWith(
      postId: postId == freezed ? _value.postId : postId as String,
      uid: uid == freezed ? _value.uid : uid as String,
    ));
  }
}

/// @nodoc
abstract class $UpdateCommentInfo$CopyWith<$Res>
    implements $UpdateCommentInfoCopyWith<$Res> {
  factory $UpdateCommentInfo$CopyWith(
          UpdateCommentInfo$ value, $Res Function(UpdateCommentInfo$) then) =
      _$UpdateCommentInfo$CopyWithImpl<$Res>;
  @override
  $Res call({String postId, String uid});
}

/// @nodoc
class _$UpdateCommentInfo$CopyWithImpl<$Res>
    extends _$UpdateCommentInfoCopyWithImpl<$Res>
    implements $UpdateCommentInfo$CopyWith<$Res> {
  _$UpdateCommentInfo$CopyWithImpl(
      UpdateCommentInfo$ _value, $Res Function(UpdateCommentInfo$) _then)
      : super(_value, (v) => _then(v as UpdateCommentInfo$));

  @override
  UpdateCommentInfo$ get _value => super._value as UpdateCommentInfo$;

  @override
  $Res call({
    Object postId = freezed,
    Object uid = freezed,
  }) {
    return _then(UpdateCommentInfo$(
      postId: postId == freezed ? _value.postId : postId as String,
      uid: uid == freezed ? _value.uid : uid as String,
    ));
  }
}

/// @nodoc
class _$UpdateCommentInfo$ implements UpdateCommentInfo$ {
  const _$UpdateCommentInfo$({this.postId, this.uid});

  @override
  final String postId;
  @override
  final String uid;

  @override
  String toString() {
    return 'UpdateCommentInfo(postId: $postId, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateCommentInfo$ &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(uid);

  @override
  $UpdateCommentInfo$CopyWith<UpdateCommentInfo$> get copyWith =>
      _$UpdateCommentInfo$CopyWithImpl<UpdateCommentInfo$>(this, _$identity);
}

abstract class UpdateCommentInfo$ implements UpdateCommentInfo {
  const factory UpdateCommentInfo$({String postId, String uid}) =
      _$UpdateCommentInfo$;

  @override
  String get postId;
  @override
  String get uid;
  @override
  $UpdateCommentInfo$CopyWith<UpdateCommentInfo$> get copyWith;
}
