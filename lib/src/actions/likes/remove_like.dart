part of likes_actions;

@freezed
abstract class RemoveLike with _$RemoveLike implements AppAction {
  const factory RemoveLike({@required String id, String parentId}) = RemoveLike$;

  const factory RemoveLike.successful(String parentId) = RemoveLikeSuccessful;

  @Implements(ErrorAction)
  const factory RemoveLike.error(Object error) = RemoveLikeError;
}
