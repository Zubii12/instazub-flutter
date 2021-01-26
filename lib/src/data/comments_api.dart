import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instazub/src/models/comments/index.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

class CommentsApi {
  const CommentsApi({@required FirebaseFirestore firestore})
      : assert(firestore != null),
        _firestore = firestore;

  final FirebaseFirestore _firestore;

  Future<Comment> createComment({@required String senderUid, @required String postId, @required String text}) async {
    final DocumentReference reference = _firestore.collection('comments').doc();
    final Comment comment = Comment((CommentBuilder b) {
      b
        ..id = reference.id
        ..postId = postId
        ..senderUid = senderUid
        ..text = text
        ..createdAt = DateTime.now()
        ..likes = 0;
    });
    await reference.set(comment.json);
    return comment;
  }

  Stream<List<Comment>> listen(String postId) {
    return _firestore //
        .collection('comments')
        .where('postId', isEqualTo: postId)
        //.orderBy('createdAt')
        .snapshots()
        .map((QuerySnapshot snapshot) => snapshot.docs //
                .map((QueryDocumentSnapshot document) {
              return Comment.fromJson(document.data());
            }).toList())
        .doOnData((List<Comment> comments) => comments);
  }
}
