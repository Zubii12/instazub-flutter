import 'package:instazub/src/actions/index.dart';
import 'package:instazub/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<CommentsState> commentsReducer = combineReducers(<Reducer<CommentsState>>[
  TypedReducer<CommentsState, CreateCommentSuccessful>(_createCommentSuccessful),
  TypedReducer<CommentsState, OnCommentsEvent>(_onCommentsEvent),
  TypedReducer<CommentsState, UpdateCommentInfo>(_updateCommentInfo)
]);

CommentsState _createCommentSuccessful(CommentsState state, CreateCommentSuccessful action) {
  return state.rebuild((CommentsStateBuilder b) => b.comments.add(action.comment));
}

CommentsState _onCommentsEvent(CommentsState state, OnCommentsEvent action) {
  return state.rebuild((CommentsStateBuilder b) {
    for (final Comment comment in action.comments) {
      if (!b.comments.build().contains(comment)) {
        b.comments.add(comment);
      }
    }
  });
}

CommentsState _updateCommentInfo(CommentsState state, UpdateCommentInfo action) {
  return state.rebuild((CommentsStateBuilder b) {
    if (action.postId != null) {
      b.info.postId = action.postId;
    } else if (action.uid != null) {
      b.info.uid = action.uid;
    } else {
      b.info = CommentInfo().toBuilder();
    }
  });
}
