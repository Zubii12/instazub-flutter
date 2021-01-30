import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instazub/src/models/likes/index.dart';
import 'package:meta/meta.dart';

class LikesApi {
  const LikesApi({@required FirebaseFirestore firestore})
      : assert(firestore != null),
        _firestore = firestore;

  final FirebaseFirestore _firestore;

  Future<Like> create({
    @required String uid,
    @required String parentId,
    @required LikeType type,
  }) async {
    final List<bool> likes = await _alreadyLiked(uid, parentId);
    bool isLiked = false;
    if (likes.isEmpty) {
      isLiked = false;
    } else if (likes.first == true) {
      isLiked = true;
    }
    if (!isLiked) {
      final DocumentReference reference = _firestore.collection('likes').doc();
      final Like like = Like((LikeBuilder b) {
        b
          ..id = reference.id
          ..parentId = parentId
          ..uid = uid
          ..type = type
          ..createdAt = Timestamp.now().toString();
      });

      await reference.set(like.json);
      final String path = type == LikeType.post ? 'posts' : 'comments';

      final DocumentReference likeRef = _firestore.doc('$path/$parentId');
      await likeRef.update(<String, FieldValue>{'likes': FieldValue.increment(1)});
      return like;
    } else {
      final String path = type == LikeType.post ? 'posts' : 'comments';

      final DocumentReference likeRef = _firestore.doc('$path/$parentId');
      await likeRef.update(<String, FieldValue>{'likes': FieldValue.increment(-1)});
      final QuerySnapshot snapshot = await _firestore //
          .collection('likes')
          .where('uid', isEqualTo: uid)
          .where('parentId', isEqualTo: parentId)
          .get();

      final List<String> ids = snapshot.docs.map<String>((QueryDocumentSnapshot doc) => doc.data()['id']).toList();
      for (final String id in ids) {
        await _firestore.doc('likes/$id').delete();
      }
      return null;
    }
  }

  Future<List<bool>> _alreadyLiked(String uid, String parentId) async {
    final QuerySnapshot snapshot = await _firestore //
        .collection('likes')
        .where('uid', isEqualTo: uid)
        .where('parentId', isEqualTo: parentId)
        .get();
    return snapshot.docs //
        .map((QueryDocumentSnapshot doc) {
      if (doc.data().isEmpty) {
        return false;
      } else {
        return true;
      }
    }).toList();
  }

  Future<List<Like>> get({@required String parentId}) async {
    final QuerySnapshot snapshot = await _firestore //
        .collection('likes')
        .where('parentId', isEqualTo: parentId)
        .get();
    return snapshot //
        .docs
        .map((QueryDocumentSnapshot snapshot) => Like.fromJson(snapshot.data()))
        .toList();
  }

  Future<void> remove(String id) async {
    final DocumentReference reference = _firestore.doc('likes/$id');
    await reference.delete();
  }
}
