import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instazub/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:instazub/src/data/index.dart';

class AuthApi {
  const AuthApi({@required FirebaseAuth auth, @required FirebaseFirestore firestore})
      : assert(auth != null),
        assert(firestore != null),
        _auth = auth,
        _firestore = firestore;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  Future<AppUser> isLogged() async {
    final User user = _auth.currentUser;
    if (user != null) {
      final DocumentSnapshot snapshot = await _firestore.doc('users/${user.uid}').get();
      return AppUser.fromJson(snapshot.data());
    }
    return null;
  }

  Future<AppUser> login({@required String email, @required String password}) async {
    final UserCredential response = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = response.user;
    final DocumentSnapshot snapshot = await _firestore.doc('users/${user.uid}').get();
    return AppUser.fromJson(snapshot.data());
  }

  Future<AppUser> signUp({@required String email, @required String password, @required String username}) async {
    final UserCredential response = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    final User user = response.user;
    final AppUser appUser = AppUser((AppUserBuilder b) {
      b
        ..uid = user.uid
        ..email = user.email
        ..username = username
        ..searchIndex = ListBuilder<String>(<String>[username].searchIndex)
        ..emailVerified = user.emailVerified
        ..creationTime = user.metadata.creationTime.toString()
        ..lastSignInTime = user.metadata.lastSignInTime.toString()
        ..phoneNumber = user.phoneNumber
        ..photoUrl = user.photoURL
        ..following = ListBuilder<String>()
        ..followers = ListBuilder<String>();
    });
    final DocumentSnapshot snapshot = await _firestore.doc('users/${user.uid}').get();
    if (snapshot.exists) {
      return AppUser.fromJson(snapshot.data);
    }
    await _firestore.doc('users/${user.uid}').set(appUser.json);
    return appUser;
  }

  Future<void> resetPassword({@required String email}) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<List<AppUser>> searchUsers(String query) async {
    final QuerySnapshot snapshot = await _firestore
        .collection('users') //
        .where('searchIndex', arrayContains: query)
        .get();

    return snapshot.docs //
        .map((QueryDocumentSnapshot snapshot) => AppUser.fromJson(snapshot.data()))
        .toList();
  }

  Future<AppUser> getUser(String uid) async {
    final DocumentSnapshot snapshot = await _firestore.doc('users/$uid').get();
    return AppUser.fromJson(snapshot.data());
  }

  Future<void> updateFollowing({@required String uid, String add, String remove}) async {
    FieldValue value;
    if (add != null) {
      value = FieldValue.arrayUnion(<String>[add]);
    } else {
      value = FieldValue.arrayRemove(<String>[remove]);
    }

    await _firestore.doc('users/$uid').update(<String, dynamic>{'following': value});
  }
}
