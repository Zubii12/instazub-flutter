part of comments_models;

abstract class CommentInfo implements Built<CommentInfo, CommentInfoBuilder> {
  factory CommentInfo([void Function(CommentInfoBuilder b) updates]) = _$CommentInfo;

  factory CommentInfo.initialState() {
    return _$CommentInfo();
  }

  factory CommentInfo.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  CommentInfo._();

  @nullable
  String get id;

  @nullable
  String get postId;

  @nullable
  String get uid;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<CommentInfo> get serializer => _$commentInfoSerializer;
}
