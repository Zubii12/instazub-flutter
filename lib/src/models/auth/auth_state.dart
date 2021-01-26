part of auth_models;

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  factory AuthState.initialState() {
    return _$AuthState();
  }

  factory AuthState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  AuthState._();

  @nullable
  AppUser get user;

  RegistrationInfo get info;

  BuiltList<AppUser> get searchResult;

  BuiltMap<String, AppUser> get followers;

  BuiltMap<String, AppUser> get following;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AuthState> get serializer => _$authStateSerializer;
}
