part of likes_actions;

@freezed
abstract class GetLikes with _$GetLikes implements AppAction {
  const factory GetLikes({@required String parentId}) = GetLikes$;

  const factory GetLikes.successful(List<Like> likes) = GetLikesSuccessful;

  @Implements(ErrorAction)
  const factory GetLikes.error(Object error) = GetLikesError;
}
