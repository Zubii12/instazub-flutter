part of likes_models;

abstract class Like implements Built<Like, LikeBuilder> {
  factory Like([void Function(LikeBuilder b) updates]) = _$Like;

  factory Like.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Like._();

  String get id;

  String get parentId;

  String get uid;

  String get createdAt;

  LikeType get type;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Like> get serializer => _$likeSerializer;
}
