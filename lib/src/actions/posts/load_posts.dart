part of posts_actions;

@freezed
abstract class LoadPosts with _$LoadPosts implements AppAction {
  const factory LoadPosts(List<String> following) = LoadPosts$;

  const factory LoadPosts.successful(List<Post> posts) = LoadPostsSuccessful;

  @Implements(ErrorAction)
  const factory LoadPosts.error(Object error) = LoadPostsError;
}
