part of likes_models;

class LikeType extends EnumClass {
  const LikeType._(String name) : super(name);

  static const LikeType comment = _$comment;
  static const LikeType post = _$post;

  static BuiltSet<LikeType> get values => _$values;

  static LikeType valueOf(String name) => _$valueOf(name);

  static Serializer<LikeType> get serializer => _$likeTypeSerializer;
}
