part of auth_actions;

@freezed
abstract class IsLogged with _$IsLogged implements AppAction {
  const factory IsLogged() = IsLogged$;

  const factory IsLogged.successful(@nullable AppUser user) = IsLoggedSuccessful;

  @Implements(ErrorAction)
  const factory IsLogged.error(Object error) = IsLoggedError;
}
