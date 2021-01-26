part of auth_actions;

@freezed
abstract class SearchUsers with _$SearchUsers implements AppAction {
  const factory SearchUsers(String query) = SearchUsers$;

  const factory SearchUsers.successful(List<AppUser> users) = SearchUsersSuccessful;

  @Implements(ErrorAction)
  const factory SearchUsers.error(StateError error) = SearchUsersError;
}
