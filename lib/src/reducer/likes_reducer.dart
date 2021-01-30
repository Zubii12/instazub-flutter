import 'package:built_collection/built_collection.dart';
import 'package:instazub/src/actions/index.dart';
import 'package:instazub/src/models/likes/index.dart';
import 'package:redux/redux.dart';

Reducer<LikesState> likesReducer = combineReducers(<Reducer<LikesState>>[
  TypedReducer<LikesState, CreateLikeSuccessful>(_createLikeSuccessful),
  TypedReducer<LikesState, GetLikesSuccessful>(_getLikesSuccessful),
  TypedReducer<LikesState, RemoveLikeSuccessful>(_removeLikeSuccessful),
]);

LikesState _createLikeSuccessful(LikesState state, CreateLikeSuccessful action) {
  return state.rebuild((LikesStateBuilder b) {
    if (action.like != null) {
      final Like like = action.like;
      if (like.type == LikeType.post) {
        final ListBuilder<Like> likes = b.posts[like.parentId]?.toBuilder() ?? ListBuilder<Like>();
        if (!likes.build().contains(like)) {
          likes.add(like);
        }
        b.posts[like.parentId] = likes.build();
      } else if (like.type == LikeType.comment) {
        final ListBuilder<Like> likes = b.comments[like.parentId]?.toBuilder() ?? ListBuilder<Like>();
        if (!likes.build().contains(like)) {
          likes.add(like);
        }
        b.comments[like.parentId] = likes.build();
      }
    } else {
      b.build();
    }
  });
}

LikesState _getLikesSuccessful(LikesState state, GetLikesSuccessful action) {
  return state.rebuild((LikesStateBuilder b) {
    if (action.likes.first.type == LikeType.post) {
      b.posts[action.likes.first.parentId] = BuiltList<Like>(action.likes);
    } else if (action.likes.first.type == LikeType.comment) {
      b.comments[action.likes.first.parentId] = BuiltList<Like>(action.likes);
    } else {
      return state;
    }
  });
}

LikesState _removeLikeSuccessful(LikesState state, RemoveLikeSuccessful action) {
  return state.rebuild((LikesStateBuilder b) {
    final String parentId = action.parentId;
    b //
      ..posts.remove(parentId)
      ..comments.remove(parentId);
  });
}
