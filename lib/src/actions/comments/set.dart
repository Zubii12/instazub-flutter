part of comments_actions;

@freezed
abstract class UpdateCommentInfo with _$UpdateCommentInfo implements AppAction {
  const factory UpdateCommentInfo({
    String postId,
    String uid,
  }) = UpdateCommentInfo$;
}
