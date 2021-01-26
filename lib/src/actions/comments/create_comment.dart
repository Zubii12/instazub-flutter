part of comments_actions;

@freezed
abstract class CreateComment with _$CreateComment implements AppAction {
  const factory CreateComment({
    @required String senderUid,
    @required String postId,
    @required String text,
  }) = CreateComment$;

  const factory CreateComment.successful(Comment comment) = CreateCommentSuccessful;

  @Implements(ErrorAction)
  const factory CreateComment.error(Object error) = CreateCommentError;
}
