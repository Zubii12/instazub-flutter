// GENERATED CODE - DO NOT MODIFY BY HAND

part of comments_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Comment> _$commentSerializer = new _$CommentSerializer();
Serializer<CommentsState> _$commentsStateSerializer =
    new _$CommentsStateSerializer();
Serializer<CommentInfo> _$commentInfoSerializer = new _$CommentInfoSerializer();

class _$CommentSerializer implements StructuredSerializer<Comment> {
  @override
  final Iterable<Type> types = const [Comment, _$Comment];
  @override
  final String wireName = 'Comment';

  @override
  Iterable<Object> serialize(Serializers serializers, Comment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'senderUid',
      serializers.serialize(object.senderUid,
          specifiedType: const FullType(String)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'likes',
      serializers.serialize(object.likes, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Comment deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'senderUid':
          result.senderUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CommentsStateSerializer implements StructuredSerializer<CommentsState> {
  @override
  final Iterable<Type> types = const [CommentsState, _$CommentsState];
  @override
  final String wireName = 'CommentsState';

  @override
  Iterable<Object> serialize(Serializers serializers, CommentsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'comments',
      serializers.serialize(object.comments,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Comment)])),
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(CommentInfo)),
    ];

    return result;
  }

  @override
  CommentsState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Comment)]))
              as BuiltList<Object>);
          break;
        case 'info':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(CommentInfo)) as CommentInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$CommentInfoSerializer implements StructuredSerializer<CommentInfo> {
  @override
  final Iterable<Type> types = const [CommentInfo, _$CommentInfo];
  @override
  final String wireName = 'CommentInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, CommentInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.postId != null) {
      result
        ..add('postId')
        ..add(serializers.serialize(object.postId,
            specifiedType: const FullType(String)));
    }
    if (object.uid != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(object.uid,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CommentInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Comment extends Comment {
  @override
  final String id;
  @override
  final String postId;
  @override
  final String senderUid;
  @override
  final String text;
  @override
  final DateTime createdAt;
  @override
  final int likes;

  factory _$Comment([void Function(CommentBuilder) updates]) =>
      (new CommentBuilder()..update(updates)).build();

  _$Comment._(
      {this.id,
      this.postId,
      this.senderUid,
      this.text,
      this.createdAt,
      this.likes})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Comment', 'id');
    }
    if (postId == null) {
      throw new BuiltValueNullFieldError('Comment', 'postId');
    }
    if (senderUid == null) {
      throw new BuiltValueNullFieldError('Comment', 'senderUid');
    }
    if (text == null) {
      throw new BuiltValueNullFieldError('Comment', 'text');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Comment', 'createdAt');
    }
    if (likes == null) {
      throw new BuiltValueNullFieldError('Comment', 'likes');
    }
  }

  @override
  Comment rebuild(void Function(CommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentBuilder toBuilder() => new CommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
        id == other.id &&
        postId == other.postId &&
        senderUid == other.senderUid &&
        text == other.text &&
        createdAt == other.createdAt &&
        likes == other.likes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), postId.hashCode),
                    senderUid.hashCode),
                text.hashCode),
            createdAt.hashCode),
        likes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Comment')
          ..add('id', id)
          ..add('postId', postId)
          ..add('senderUid', senderUid)
          ..add('text', text)
          ..add('createdAt', createdAt)
          ..add('likes', likes))
        .toString();
  }
}

class CommentBuilder implements Builder<Comment, CommentBuilder> {
  _$Comment _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _postId;
  String get postId => _$this._postId;
  set postId(String postId) => _$this._postId = postId;

  String _senderUid;
  String get senderUid => _$this._senderUid;
  set senderUid(String senderUid) => _$this._senderUid = senderUid;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  int _likes;
  int get likes => _$this._likes;
  set likes(int likes) => _$this._likes = likes;

  CommentBuilder();

  CommentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _postId = _$v.postId;
      _senderUid = _$v.senderUid;
      _text = _$v.text;
      _createdAt = _$v.createdAt;
      _likes = _$v.likes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Comment;
  }

  @override
  void update(void Function(CommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Comment build() {
    final _$result = _$v ??
        new _$Comment._(
            id: id,
            postId: postId,
            senderUid: senderUid,
            text: text,
            createdAt: createdAt,
            likes: likes);
    replace(_$result);
    return _$result;
  }
}

class _$CommentsState extends CommentsState {
  @override
  final BuiltList<Comment> comments;
  @override
  final CommentInfo info;

  factory _$CommentsState([void Function(CommentsStateBuilder) updates]) =>
      (new CommentsStateBuilder()..update(updates)).build();

  _$CommentsState._({this.comments, this.info}) : super._() {
    if (comments == null) {
      throw new BuiltValueNullFieldError('CommentsState', 'comments');
    }
    if (info == null) {
      throw new BuiltValueNullFieldError('CommentsState', 'info');
    }
  }

  @override
  CommentsState rebuild(void Function(CommentsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentsStateBuilder toBuilder() => new CommentsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentsState &&
        comments == other.comments &&
        info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, comments.hashCode), info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommentsState')
          ..add('comments', comments)
          ..add('info', info))
        .toString();
  }
}

class CommentsStateBuilder
    implements Builder<CommentsState, CommentsStateBuilder> {
  _$CommentsState _$v;

  ListBuilder<Comment> _comments;
  ListBuilder<Comment> get comments =>
      _$this._comments ??= new ListBuilder<Comment>();
  set comments(ListBuilder<Comment> comments) => _$this._comments = comments;

  CommentInfoBuilder _info;
  CommentInfoBuilder get info => _$this._info ??= new CommentInfoBuilder();
  set info(CommentInfoBuilder info) => _$this._info = info;

  CommentsStateBuilder();

  CommentsStateBuilder get _$this {
    if (_$v != null) {
      _comments = _$v.comments?.toBuilder();
      _info = _$v.info?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommentsState;
  }

  @override
  void update(void Function(CommentsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentsState build() {
    _$CommentsState _$result;
    try {
      _$result = _$v ??
          new _$CommentsState._(comments: comments.build(), info: info.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'comments';
        comments.build();
        _$failedField = 'info';
        info.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommentsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CommentInfo extends CommentInfo {
  @override
  final String id;
  @override
  final String postId;
  @override
  final String uid;

  factory _$CommentInfo([void Function(CommentInfoBuilder) updates]) =>
      (new CommentInfoBuilder()..update(updates)).build();

  _$CommentInfo._({this.id, this.postId, this.uid}) : super._();

  @override
  CommentInfo rebuild(void Function(CommentInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentInfoBuilder toBuilder() => new CommentInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentInfo &&
        id == other.id &&
        postId == other.postId &&
        uid == other.uid;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), postId.hashCode), uid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommentInfo')
          ..add('id', id)
          ..add('postId', postId)
          ..add('uid', uid))
        .toString();
  }
}

class CommentInfoBuilder implements Builder<CommentInfo, CommentInfoBuilder> {
  _$CommentInfo _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _postId;
  String get postId => _$this._postId;
  set postId(String postId) => _$this._postId = postId;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  CommentInfoBuilder();

  CommentInfoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _postId = _$v.postId;
      _uid = _$v.uid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommentInfo;
  }

  @override
  void update(void Function(CommentInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentInfo build() {
    final _$result =
        _$v ?? new _$CommentInfo._(id: id, postId: postId, uid: uid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
