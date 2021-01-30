part of likes_actions;

@freezed
abstract class CreateLike with _$CreateLike implements AppAction {
  const factory CreateLike({
    @required String parentId,
    @required LikeType type,
  }) = CreateLike$;

  const factory CreateLike.successful(@nullable Like like) = CreateLikeSuccessful;

  @Implements(ErrorAction)
  const factory CreateLike.error(Object error) = CreateLikeError;
}
