part of auth_actions;

@freezed
abstract class UpdateFollowing with _$UpdateFollowing implements AppAction {
  const factory UpdateFollowing({String add, String remove}) = UpdateFollowing$;

  const factory UpdateFollowing.successful({String add, String remove}) = UpdateFollowingSuccessful;

  @Implements(ErrorAction)
  const factory UpdateFollowing.error(Object error) = UpdateFollowingError;
}
