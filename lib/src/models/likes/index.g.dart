// GENERATED CODE - DO NOT MODIFY BY HAND

part of likes_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LikeType _$comment = const LikeType._('comment');
const LikeType _$post = const LikeType._('post');

LikeType _$valueOf(String name) {
  switch (name) {
    case 'comment':
      return _$comment;
    case 'post':
      return _$post;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<LikeType> _$values = new BuiltSet<LikeType>(const <LikeType>[
  _$comment,
  _$post,
]);

Serializer<Like> _$likeSerializer = new _$LikeSerializer();
Serializer<LikeType> _$likeTypeSerializer = new _$LikeTypeSerializer();
Serializer<LikesState> _$likesStateSerializer = new _$LikesStateSerializer();

class _$LikeSerializer implements StructuredSerializer<Like> {
  @override
  final Iterable<Type> types = const [Like, _$Like];
  @override
  final String wireName = 'Like';

  @override
  Iterable<Object> serialize(Serializers serializers, Like object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'parentId',
      serializers.serialize(object.parentId,
          specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(LikeType)),
    ];

    return result;
  }

  @override
  Like deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LikeBuilder();

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
        case 'parentId':
          result.parentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(LikeType)) as LikeType;
          break;
      }
    }

    return result.build();
  }
}

class _$LikeTypeSerializer implements PrimitiveSerializer<LikeType> {
  @override
  final Iterable<Type> types = const <Type>[LikeType];
  @override
  final String wireName = 'LikeType';

  @override
  Object serialize(Serializers serializers, LikeType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  LikeType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LikeType.valueOf(serialized as String);
}

class _$LikesStateSerializer implements StructuredSerializer<LikesState> {
  @override
  final Iterable<Type> types = const [LikesState, _$LikesState];
  @override
  final String wireName = 'LikesState';

  @override
  Iterable<Object> serialize(Serializers serializers, LikesState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'posts',
      serializers.serialize(object.posts,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltList, const [const FullType(Like)])
          ])),
      'comments',
      serializers.serialize(object.comments,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltList, const [const FullType(Like)])
          ])),
    ];

    return result;
  }

  @override
  LikesState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LikesStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(BuiltList, const [const FullType(Like)])
              ])));
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(BuiltList, const [const FullType(Like)])
              ])));
          break;
      }
    }

    return result.build();
  }
}

class _$Like extends Like {
  @override
  final String id;
  @override
  final String parentId;
  @override
  final String uid;
  @override
  final String createdAt;
  @override
  final LikeType type;

  factory _$Like([void Function(LikeBuilder) updates]) =>
      (new LikeBuilder()..update(updates)).build();

  _$Like._({this.id, this.parentId, this.uid, this.createdAt, this.type})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Like', 'id');
    }
    if (parentId == null) {
      throw new BuiltValueNullFieldError('Like', 'parentId');
    }
    if (uid == null) {
      throw new BuiltValueNullFieldError('Like', 'uid');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Like', 'createdAt');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Like', 'type');
    }
  }

  @override
  Like rebuild(void Function(LikeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LikeBuilder toBuilder() => new LikeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Like &&
        id == other.id &&
        parentId == other.parentId &&
        uid == other.uid &&
        createdAt == other.createdAt &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), parentId.hashCode), uid.hashCode),
            createdAt.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Like')
          ..add('id', id)
          ..add('parentId', parentId)
          ..add('uid', uid)
          ..add('createdAt', createdAt)
          ..add('type', type))
        .toString();
  }
}

class LikeBuilder implements Builder<Like, LikeBuilder> {
  _$Like _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _parentId;
  String get parentId => _$this._parentId;
  set parentId(String parentId) => _$this._parentId = parentId;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  LikeType _type;
  LikeType get type => _$this._type;
  set type(LikeType type) => _$this._type = type;

  LikeBuilder();

  LikeBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _parentId = _$v.parentId;
      _uid = _$v.uid;
      _createdAt = _$v.createdAt;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Like other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Like;
  }

  @override
  void update(void Function(LikeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Like build() {
    final _$result = _$v ??
        new _$Like._(
            id: id,
            parentId: parentId,
            uid: uid,
            createdAt: createdAt,
            type: type);
    replace(_$result);
    return _$result;
  }
}

class _$LikesState extends LikesState {
  @override
  final BuiltMap<String, BuiltList<Like>> posts;
  @override
  final BuiltMap<String, BuiltList<Like>> comments;

  factory _$LikesState([void Function(LikesStateBuilder) updates]) =>
      (new LikesStateBuilder()..update(updates)).build();

  _$LikesState._({this.posts, this.comments}) : super._() {
    if (posts == null) {
      throw new BuiltValueNullFieldError('LikesState', 'posts');
    }
    if (comments == null) {
      throw new BuiltValueNullFieldError('LikesState', 'comments');
    }
  }

  @override
  LikesState rebuild(void Function(LikesStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LikesStateBuilder toBuilder() => new LikesStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LikesState &&
        posts == other.posts &&
        comments == other.comments;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, posts.hashCode), comments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LikesState')
          ..add('posts', posts)
          ..add('comments', comments))
        .toString();
  }
}

class LikesStateBuilder implements Builder<LikesState, LikesStateBuilder> {
  _$LikesState _$v;

  MapBuilder<String, BuiltList<Like>> _posts;
  MapBuilder<String, BuiltList<Like>> get posts =>
      _$this._posts ??= new MapBuilder<String, BuiltList<Like>>();
  set posts(MapBuilder<String, BuiltList<Like>> posts) => _$this._posts = posts;

  MapBuilder<String, BuiltList<Like>> _comments;
  MapBuilder<String, BuiltList<Like>> get comments =>
      _$this._comments ??= new MapBuilder<String, BuiltList<Like>>();
  set comments(MapBuilder<String, BuiltList<Like>> comments) =>
      _$this._comments = comments;

  LikesStateBuilder();

  LikesStateBuilder get _$this {
    if (_$v != null) {
      _posts = _$v.posts?.toBuilder();
      _comments = _$v.comments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LikesState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LikesState;
  }

  @override
  void update(void Function(LikesStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LikesState build() {
    _$LikesState _$result;
    try {
      _$result = _$v ??
          new _$LikesState._(posts: posts.build(), comments: comments.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'posts';
        posts.build();
        _$failedField = 'comments';
        comments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LikesState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
