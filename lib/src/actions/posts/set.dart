part of posts_actions;

@freezed
abstract class UpdatePostInfo with _$UpdatePostInfo implements AppAction {
  const factory UpdatePostInfo({
    String addImage,
    String addLocalImage,
    String removeLocalImage,
    String removeImage,
    String description,
    double lng,
    double lat,
    AppUser addUser,
    AppUser removeUser,
  }) = UpdatePostInfo$;
}
