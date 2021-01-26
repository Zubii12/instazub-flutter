part of posts_actions;

@freezed
abstract class ListenForPosts with _$ListenForPosts implements AppAction {
  const factory ListenForPosts(String uid) = ListenForPosts$;

  const factory ListenForPosts.successful(List<Post> posts) = ListenForPostsSuccessful;

  const factory ListenForPosts.stop(String uid) = ListenForPostsStop;

  @Implements(ErrorAction)
  const factory ListenForPosts.error(Object error) = ListenForPostsError;
}
