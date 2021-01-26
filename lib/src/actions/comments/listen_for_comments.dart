part of comments_actions;

@freezed
abstract class ListenForComments with _$ListenForComments implements AppAction {
  const factory ListenForComments.start(String postId) = ListenForCommentsStart;

  const factory ListenForComments.done(String postId) = ListenForCommentsDone;

  const factory ListenForComments.event(List<Comment> comments) = OnCommentsEvent;

  @Implements(ErrorAction)
  const factory ListenForComments.error(Object error) = _ListenForCommentsError;
}
