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
            .asyncMap((CreatePost$ action) {
              final List<String> tags = store.state.posts.info.tags.asList();
              final String description = store.state.posts.info.description;
              final PostInfo info = store.state.posts.info;
              final List<String> newDescSplited = description.split(' ');
              for (final String tag in tags) {
                newDescSplited.remove('#$tag');
              }
              String newDesc = '';
              for (final String i in newDescSplited) {
                newDesc += ' $i';
              }
              final PostInfo postInfo = PostInfo((PostInfoBuilder b) {
                b
                  ..paths = info.paths.toBuilder()
                  ..tags = info.tags.toBuilder()
                  ..description = newDesc
                  ..users = info.users.toBuilder()
                  ..lng = info.lng
                  ..lat = info.lat;
              });
              return _api.createPost(postInfo, store.state.auth.user.uid);
            })
            .mapTo(const CreatePost.successful())
            .onErrorReturnWith((dynamic error) => CreatePost.error(error)));
  }

  Stream<AppAction> _listenForPosts(Stream<ListenForPosts$> actions, EpicStore<AppState> store) {
    return actions //
        .whereType<ListenForPosts$>()
        .flatMap((ListenForPosts$ action) => _api
            .listen(action.uid)
            .expand<AppAction>((List<Post> posts) => <AppAction>[
                  ListenForPosts.successful(posts),
                  ...posts
                      .map((Post post) => post.uid)
                      .toSet()
                      .where((String uid) => store.state.auth.following[uid] == null)
                      .map((String uid) => GetUser(uid)),
                ])
            .takeUntil(actions
                .whereType<ListenForPostsStop>()
                .where((ListenForPostsStop stopAction) => stopAction.uid == action.uid))
            .onErrorReturnWith((dynamic error) => ListenForPosts.error(error)));
  }
}
