import 'dart:async';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:instazub/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

class PostsApi {
  const PostsApi({@required FirebaseFirestore firestore, @required FirebaseStorage storage})
      : assert(firestore != null),
        assert(storage != null),
        _firestore = firestore,
        _storage = storage;

  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  Future<void> createPost(PostInfo info, String uid) async {
    final DocumentReference ref = _firestore.collection('posts').doc();
    final List<String> images = await _uploadImages(ref.id, info.paths);
    final Post post = Post((PostBuilder b) {
      b
        ..id = ref.id
        ..uid = uid
        ..images = ListBuilder<String>(images)
        ..tags = ListBuilder<String>(info.tags)
        ..likes = 0
        ..description = info.description
        ..users = ListBuilder<String>(info.users.map<String>((AppUser user) => user.uid))
        ..lng = info.lng
        ..lat = info.lat;
    });

    await ref.set(post.json);
  }

  Stream<List<Post>> listen(String uid) {
    return _firestore //
        .collection('posts')
        .where('uid', isEqualTo: uid)
        .snapshots()
        .map((QuerySnapshot snapshot) => snapshot.docs //
            .map((QueryDocumentSnapshot document) => Post.fromJson(document.data()))
            .toList())
        .doOnData((List<Post> list) => list);
  }

  Future<List<String>> _uploadImages(String id, BuiltList<String> paths) async {
    final List<String> images = <String>[];
    for (final String path in paths) {
      final DocumentReference ref = _firestore.collection('NOT_USED').doc();
      final Reference storageRef = _storage.ref('posts/$id/${ref.id}');
      await storageRef.putFile(File(path));

      final String url = await storageRef.getDownloadURL();
      images.add(url);
    }

    return images;
  }
}
