import 'package:instazub/src/actions/comments/index.dart';
import 'package:instazub/src/actions/index.dart';
import 'package:instazub/src/data/comments_api.dart';
import 'package:instazub/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class CommentsEpics {
  CommentsEpics({@required CommentsApi api})
      : assert(api != null),
        _api = api;

  final CommentsApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, CreateComment$>(_createComment),
      TypedEpic<AppState, ListenForCommentsStart>(_listenForComments),
    ]);
  }

  Stream<AppAction> _createComment(Stream<CreateComment$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateComment$ action) => Stream<CreateComment$>.value(action)
            .asyncMap((CreateComment$ action) => _api.createComment(
                  senderUid: action.senderUid,
                  postId: action.postId,
                  text: action.text,
                ))
            .map((Comment comment) => CreateComment.successful(comment))
            .onErrorReturnWith((dynamic error) => CreateComment.error(error)));
  }

  Stream<AppAction> _listenForComments(Stream<ListenForCommentsStart> actions, EpicStore<AppState> store) {
    return actions //
        .whereType<ListenForCommentsStart>()
        .flatMap((ListenForCommentsStart action) => _api
            .listen(action.postId) //
            .expand<AppAction>((List<Comment> comments) => <AppAction>[
                  ListenForComments.event(comments),
                ])
            .takeUntil(actions
                .whereType<ListenForCommentsDone>()
                .where((ListenForCommentsDone doneAction) => doneAction.postId == action.postId))
            .onErrorReturnWith((dynamic error) => ListenForComments.error(error)));
  }
}
