import 'dart:async';

import 'package:instazub/src/actions/index.dart';
import 'package:instazub/src/data/posts_api.dart';
import 'package:instazub/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class PostsEpics {
  const PostsEpics({@required PostsApi api})
      : assert(api != null),
        _api = api;

  final PostsApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, CreatePost$>(_createPost),
      TypedEpic<AppState, ListenForPosts$>(_listenForPosts),
    ]);
  }

  Stream<AppAction> _createPost(Stream<CreatePost$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreatePost$ action) => Stream<CreatePost$>.value(action)
            .asyncMap((CreatePost$ action) => _api.createPost(store.state.posts.info, store.state.auth.user.uid))
            .mapTo(const CreatePost.successful())
            .onErrorReturnWith((dynamic error) => CreatePost.error(error)));
  }

  Stream<AppAction> _listenForPosts(Stream<ListenForPosts$> actions, EpicStore<AppState> store) {
    return actions //
        .whereType<ListenForPosts$>()
        .flatMap((ListenForPosts$ action) => _api
            .listen(action.uid)
            .expand<AppAction>((List<Post> posts) => <AppAction>[
                  ...posts
                      .map((Post post) => post.uid)
                      .toSet()
                      .where((String uid) => store.state.auth.users[uid] == null)
                      .map((String uid) => GetUser(uid)),
                  ListenForPosts.successful(posts),
                ])
            .takeUntil(actions
                .whereType<ListenForPostsStop>()
                .where((ListenForPostsStop stopAction) => stopAction.uid == action.uid))
            .onErrorReturnWith((dynamic error) => ListenForPosts.error(error)));
  }
}
