import 'package:instazub/src/actions/index.dart';
import 'package:instazub/src/data/auth_api.dart';
import 'package:instazub/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpics {
  const AuthEpics({@required AuthApi api})
      : assert(api != null),
        _api = api;

  final AuthApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, Login$>(_login),
      TypedEpic<AppState, SignUp$>(_signUp),
      TypedEpic<AppState, ResetPassword$>(_resetPassword),
      TypedEpic<AppState, IsLogged$>(_isLogged),
      TypedEpic<AppState, SignOut$>(_signOut),
      TypedEpic<AppState, SearchUsers$>(_searchUsers),
      TypedEpic<AppState, GetUser$>(_getUser),
      TypedEpic<AppState, UpdateFollowing$>(_updateFollowing),
    ]);
  }

  Stream<AppAction> _login(Stream<Login$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Login$ action) => Stream<Login$>.value(action)
            .asyncMap((Login$ action) => _api.login(email: action.email, password: action.password))
            .map((AppUser user) => Login.successful(user))
            .onErrorReturnWith((dynamic error) => Login.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _signUp(Stream<SignUp$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignUp$ action) => Stream<SignUp$>.value(action)
            .asyncMap((SignUp$ action) => _api.signUp(
                  email: store.state.auth.info.email,
                  password: store.state.auth.info.password,
                  username: store.state.auth.info.username ?? store.state.auth.info.email.split('@').first,
                ))
            .map((AppUser user) => SignUp.successful(user))
            .onErrorReturnWith((dynamic error) => SignUp.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _resetPassword(Stream<ResetPassword$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ResetPassword$ action) => Stream<ResetPassword$>.value(action)
            .asyncMap((ResetPassword$ action) => _api.resetPassword(email: action.email))
            .mapTo(const ResetPassword.successful())
            .onErrorReturnWith((dynamic error) => ResetPassword.error(error)));
  }

  Stream<AppAction> _isLogged(Stream<IsLogged$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((IsLogged$ action) => Stream<IsLogged$>.value(action)
            .asyncMap((_) => _api.isLogged())
            .map((AppUser user) => IsLogged.successful(user))
            .onErrorReturnWith((dynamic error) => IsLogged.error(error)));
  }

  Stream<AppAction> _signOut(Stream<SignOut$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignOut$ action) => Stream<SignOut$>.value(action)
            .asyncMap((_) => _api.signOut())
            .mapTo(const SignOut.successful())
            .onErrorReturnWith((dynamic error) => SignOut.error(error)));
  }

  Stream<AppAction> _searchUsers(Stream<SearchUsers$> actions, EpicStore<AppState> store) {
    return actions //
        .debounceTime(const Duration(milliseconds: 500))
        .flatMap((SearchUsers$ action) => Stream<SearchUsers$>.value(action)
            .asyncMap((SearchUsers$ action) => _api.searchUsers(action.query))
            .map((List<AppUser> users) => SearchUsers.successful(users))
            .onErrorReturnWith((dynamic error) => SearchUsers.error(error)));
  }

  Stream<AppAction> _getUser(Stream<GetUser$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetUser$ action) => Stream<GetUser$>.value(action)
            .asyncMap((GetUser$ action) => _api.getUser(action.uid))
            .map((AppUser user) => GetUser.successful(user))
            .onErrorReturnWith((dynamic error) => GetUser.error(error)));
  }

  Stream<AppAction> _updateFollowing(Stream<UpdateFollowing$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((UpdateFollowing$ action) => Stream<UpdateFollowing$>.value(action)
            .asyncMap((UpdateFollowing$ action) => _api.updateFollowing(
                  uid: store.state.auth.user.uid,
                  add: action.add,
                  remove: action.remove,
                ))
            .mapTo(UpdateFollowing.successful(add: action.add, remove: action.remove))
            .onErrorReturnWith((dynamic error) => UpdateFollowing.error(error)));
  }
}
