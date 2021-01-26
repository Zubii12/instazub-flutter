import 'package:instazub/src/data/auth_api.dart';
import 'package:instazub/src/data/comments_api.dart';
import 'package:instazub/src/data/posts_api.dart';
import 'package:instazub/src/epics/auth_epics.dart';
import 'package:instazub/src/epics/comments_epics.dart';
import 'package:instazub/src/epics/posts_epics.dart';
import 'package:instazub/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics {
  const AppEpics({@required AuthApi authApi, @required PostsApi postsApi, @required CommentsApi commentsApi})
      : assert(authApi != null),
        assert(postsApi != null),
        assert(commentsApi != null),
        _authApi = authApi,
        _postsApi = postsApi,
        _commentsApi = commentsApi;

  final AuthApi _authApi;
  final PostsApi _postsApi;
  final CommentsApi _commentsApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      AuthEpics(api: _authApi).epics,
      PostsEpics(api: _postsApi).epics,
      CommentsEpics(api: _commentsApi).epics,
    ]);
  }
}
