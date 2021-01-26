part of comments_models;

abstract class Comment implements Built<Comment, CommentBuilder> {
  factory Comment([void Function(CommentBuilder b) updates]) = _$Comment;

  factory Comment.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Comment._();

  String get id;

  String get postId;

  String get senderUid;

  String get text;

  DateTime get createdAt;

  int get likes;

  int compareTo(Comment other) {
    return other.createdAt.compareTo(createdAt);
  }

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Comment> get serializer => _$commentSerializer;
}
