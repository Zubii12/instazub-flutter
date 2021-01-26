import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instazub/src/actions/comments/index.dart';
import 'package:instazub/src/containers/auth/index.dart';
import 'package:instazub/src/containers/index.dart';
import 'package:instazub/src/models/auth/index.dart';
import 'package:instazub/src/models/comments/index.dart';
import 'package:instazub/src/models/index.dart';
import 'package:instazub/src/models/posts/index.dart';
import 'package:redux/redux.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({Key key}) : super(key: key);

  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  Store<AppState> store;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      store = StoreProvider.of<AppState>(context);
      final String id = store.state.comments.info.postId;
      store.dispatch(ListenForCommentsStart(id));
    });
  }

  @override
  void dispose() {
    super.dispose();
    final String id = store.state.comments.info.postId;
    store.dispatch(ListenForCommentsDone(id));
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        return CommentInfoContainer(
          builder: (BuildContext context, CommentInfo info) {
            return FollowingContainer(
              builder: (BuildContext context, Map<String, AppUser> users) {
                return CommentsContainer(
                  builder: (BuildContext context, List<Comment> comments) {
                    return PostsContainer(
                      builder: (BuildContext context, List<Post> posts) {
                        return Form(
                          key: _key,
                          child: SafeArea(
                            child: Scaffold(
                              appBar: AppBar(
                                title: const Text('Comments', style: TextStyle(fontWeight: FontWeight.bold)),
                                centerTitle: true,
                                leading: InkWell(
                                  child: const Icon(Icons.arrow_back_ios),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                backgroundColor: Colors.black,
                              ),
                              body: comments.isEmpty
                                  ? const Center(
                                      child: Text('No comments yet'),
                                    )
                                  : ListView.builder(
                                      itemCount: comments.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        //final Comment comment = comments[index];
                                        //final AppUser user = users[comment.id];
                                        //final Post post = posts.firstWhere((Post post) => post.id == info.postId);
                                        //todo add post description first
                                        return Container(
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
                                                child: user.photoUrl != null
                                                    ? Image.network(
                                                        user.photoUrl,
                                                        height: 24,
                                                        width: 24,
                                                      )
                                                    : const Icon(Icons.person),
                                              ),
                                              Text('${user.username}'),
                                              //Text('${post.comments[user.uid]}')
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                              bottomSheet: Container(
                                color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: <Widget>[
                                      if (user.photoUrl != null)
                                        Image.network(
                                          user.photoUrl,
                                          height: 32,
                                          width: 32,
                                          fit: BoxFit.fill,
                                        )
                                      else
                                        const Icon(Icons.person, size: 32),
                                      Expanded(
                                        child: Stack(
                                          children: <Widget>[
                                            TextFormField(
                                              controller: _controller,
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.all(Radius.circular(320)),
                                                  borderSide: BorderSide(color: Colors.grey),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.all(Radius.circular(32)),
                                                  borderSide: BorderSide(color: Colors.grey),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.all(Radius.circular(32)),
                                                  borderSide: BorderSide(color: Colors.grey),
                                                ),
                                                hintText: 'Write a message ...',
                                              ),
                                              validator: (String message) {
                                                if (message.isEmpty) {
                                                  return 'Please enter a message';
                                                }
                                                return null;
                                              },
                                            ),
                                            Row(
                                              children: <Widget>[
                                                const Spacer(),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 4.0, right: 4),
                                                  child: TextButton(
                                                    child: const Text('Send'),
                                                    onPressed: () {
                                                      //todo
                                                      if (_key.currentState.validate()) {
                                                        //todo
                                                      }
                                                      //StoreProvider.of<AppState>(context).dispatch(CreateComment(senderUid: user.uid, postId: , text: null))
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
