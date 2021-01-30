import 'package:instazub/src/data/auth_api.dart';
import 'package:instazub/src/data/comments_api.dart';
import 'package:instazub/src/data/likes_api.dart';
import 'package:instazub/src/data/posts_api.dart';
import 'package:instazub/src/epics/auth_epics.dart';
import 'package:instazub/src/epics/comments_epics.dart';
import 'package:instazub/src/epics/likes_epics.dart';
import 'package:instazub/src/epics/posts_epics.dart';
import 'package:instazub/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics {
  const AppEpics(
      {@required AuthApi authApi,
      @required PostsApi postsApi,
      @required CommentsApi commentsApi,
      @required LikesApi likesApi})
      : assert(authApi != null),
        assert(postsApi != null),
        assert(commentsApi != null),
        assert(likesApi != null),
        _authApi = authApi,
        _postsApi = postsApi,
        _commentsApi = commentsApi,
        _likesApi = likesApi;

  final AuthApi _authApi;
  final PostsApi _postsApi;
  final CommentsApi _commentsApi;
  final LikesApi _likesApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      AuthEpics(api: _authApi).epics,
      PostsEpics(api: _postsApi).epics,
      CommentsEpics(api: _commentsApi).epics,
      LikesEpics(api: _likesApi).epics,
    ]);
  }
}
