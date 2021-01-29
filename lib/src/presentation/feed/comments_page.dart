import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instazub/src/actions/comments/index.dart';
import 'package:instazub/src/actions/index.dart';
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
            return UsersContainer(
              builder: (BuildContext context, Map<String, AppUser> users) {
                return CommentsContainer(
                  builder: (BuildContext context, List<Comment> comments) {
                    return PostsContainer(
                      builder: (BuildContext context, List<Post> posts) {
                        final Post post = posts.firstWhere((Post post) => post.id == info.postId);
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
                              body: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      if (user.photoUrl != null)
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CircleAvatar(
                                            backgroundImage: NetworkImage(user.photoUrl),
                                          ),
                                        )
                                      else
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.grey.shade900,
                                            child: Text(
                                              user.username[0].toUpperCase(),
                                            ),
                                          ),
                                        ),
                                      if (post.description == null || post.description.isEmpty)
                                        const SizedBox.shrink()
                                      else
                                        Text(post.description)
                                    ],
                                  ),
                                  const Divider(
                                    height: 24,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(height: 8),
                                  if (comments.isEmpty)
                                    const Center(
                                      child: Text('No comments yet'),
                                    )
                                  else
                                    Expanded(
                                      child: ListView.builder(
                                        scrollDirection: Axis.vertical,
                                        itemCount: comments.length,
                                        itemBuilder: (BuildContext context, int index) {
                                          final Comment comment = comments[index];
                                          final AppUser user = users[comment.senderUid];
                                          print('users $users');
                                          if (user != null)
                                            return Column(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
                                                      child: user.photoUrl != null
                                                          ? CircleAvatar(
                                                              backgroundImage: NetworkImage(user.photoUrl),
                                                            )
                                                          : CircleAvatar(
                                                              backgroundColor: Colors.grey.shade900,
                                                              child: Text(
                                                                user.username[0].toUpperCase(),
                                                              ),
                                                            ),
                                                    ),
                                                    Text(
                                                      '${user.username}',
                                                      style: const TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    Text('${comment.text}'),
                                                    const Spacer(),
                                                    IconButton(
                                                      icon: const Icon(
                                                        Icons.favorite_border_outlined,
                                                        size: 16,
                                                      ),
                                                      onPressed: () {
                                                        // todo add like
                                                      },
                                                    )
                                                  ],
                                                ),
                                                const Divider(),
                                              ],
                                            );
                                          return const SizedBox.shrink();
                                        },
                                      ),
                                    ),
                                ],
                              ),
                              bottomSheet: Container(
                                color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: <Widget>[
                                      if (user.photoUrl != null)
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(user.photoUrl),
                                        )
                                      else
                                        CircleAvatar(
                                          backgroundColor: Colors.grey.shade900,
                                          child: Text(
                                            user.username[0].toUpperCase(),
                                          ),
                                        ),
                                      const SizedBox(width: 4),
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
                                                      if (_key.currentState.validate()) {
                                                        StoreProvider.of<AppState>(context).dispatch(CreateComment(
                                                            senderUid: user.uid,
                                                            postId: post.id,
                                                            text: _controller.text));
                                                        _controller.clear();
                                                      }
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
