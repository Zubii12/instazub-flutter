part of auth_models;

abstract class AppUser implements Built<AppUser, AppUserBuilder> {
  factory AppUser([void Function(AppUserBuilder b) updates]) = _$AppUser;

  factory AppUser.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  AppUser._();

  String get uid;

  String get username;

  BuiltList<String> get searchIndex;

  String get email;

  @BuiltValueField(wireName: 'email_verified')
  bool get emailVerified;

  @BuiltValueField(wireName: 'creation_time')
  String get creationTime;

  @BuiltValueField(wireName: 'last_sign_in_time')
  String get lastSignInTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  BuiltList<String> get following;

  BuiltList<String> get followers;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AppUser> get serializer => _$appUserSerializer;
}
