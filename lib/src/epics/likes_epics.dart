import 'package:flutter/cupertino.dart';
import 'package:instazub/src/actions/index.dart';
import 'package:instazub/src/data/likes_api.dart';
import 'package:instazub/src/models/index.dart';
import 'package:instazub/src/models/likes/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class LikesEpics {
  const LikesEpics({@required LikesApi api})
      : assert(api != null),
        _api = api;

  final LikesApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, CreateLike$>(_createLike),
      TypedEpic<AppState, GetLikes$>(_getLikes),
      TypedEpic<AppState, RemoveLike$>(_removeLike),
    ]);
  }

  Stream<AppAction> _createLike(Stream<CreateLike$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateLike$ action) => Stream<CreateLike$>.value(action)
            .asyncMap((CreateLike$ action) => _api.create(
                  uid: store.state.auth.user.uid,
                  parentId: action.parentId,
                  type: action.type,
                ))
            .map((Like like) => CreateLike.successful(like))
            .onErrorReturnWith((dynamic error) => CreateLike.error(error)));
  }

  Stream<AppAction> _getLikes(Stream<GetLikes$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetLikes$ action) => Stream<GetLikes$>.value(action)
            .asyncMap((GetLikes$ action) => _api.get(parentId: action.parentId))
            .map((List<Like> likes) => GetLikes.successful(likes))
            .onErrorReturnWith((dynamic error) => GetLikes.error(error)));
  }

  Stream<AppAction> _removeLike(Stream<RemoveLike$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((RemoveLike$ action) => Stream<RemoveLike$>.value(action)
            .asyncMap((RemoveLike$ action) => _api.remove(action.id))
            .map((_) => RemoveLike.successful(action.parentId))
            .onErrorReturnWith((dynamic error) => RemoveLike.error(error)));
  }
}
