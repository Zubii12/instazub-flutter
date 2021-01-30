part of likes_models;

abstract class LikesState implements Built<LikesState, LikesStateBuilder> {
  factory LikesState([void Function(LikesStateBuilder b) updates]) = _$LikesState;

  factory LikesState.initialState() {
    return _$LikesState();
  }

  factory LikesState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  LikesState._();

  // postId => like
  BuiltMap<String, BuiltList<Like>> get posts;

  // commentId => like
  BuiltMap<String, BuiltList<Like>> get comments;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<LikesState> get serializer => _$likesStateSerializer;
}
