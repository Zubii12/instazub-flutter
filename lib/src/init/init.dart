import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:instazub/src/actions/index.dart';
import 'package:instazub/src/data/auth_api.dart';
import 'package:instazub/src/data/comments_api.dart';
import 'package:instazub/src/data/posts_api.dart';
import 'package:instazub/src/epics/app_epics.dart';
import 'package:instazub/src/models/index.dart';
import 'package:instazub/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<Store<AppState>> init() async {
  await Firebase.initializeApp();

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseStorage storage = FirebaseStorage.instance;

  final AuthApi authApi = AuthApi(auth: auth, firestore: firestore);
  final PostsApi postsApi = PostsApi(firestore: firestore, storage: storage);
  final CommentsApi commentsApi = CommentsApi(firestore: firestore);
  final AppEpics epic = AppEpics(authApi: authApi, postsApi: postsApi, commentsApi: commentsApi);

  return Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.epics),
    ],
  )..dispatch(const IsLogged());
}
