export 'auth/index.dart';
export 'comments/index.dart';
export 'likes/index.dart';
export 'posts/index.dart';

abstract class AppAction {
  const AppAction();
}

abstract class ErrorAction extends AppAction {
  const ErrorAction();

  Object get error;
}

typedef ActionResponse = void Function(AppAction action);
