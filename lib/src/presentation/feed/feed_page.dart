import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instazub/src/actions/auth/index.dart';
import 'package:instazub/src/actions/index.dart';
import 'package:instazub/src/containers/index.dart';
import 'package:instazub/src/models/index.dart';
import 'package:instazub/src/presentation/routes.dart';
import 'package:redux/redux.dart';
import 'package:readmore/readmore.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  Store<AppState> store;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      store = StoreProvider.of<AppState>(context);
      store.state.auth.user.following //
        ..map((String uid) => ListenForPosts(uid)).forEach(store.dispatch)
        ..map((String uid) => GetUser(uid)).forEach(store.dispatch);
    });
  }

  @override
  void dispose() {
    super.dispose();
    store.state.auth.user.following //
        .map((String uid) => ListenForPostsStop(uid))
        .forEach(store.dispatch);
  }

  @override
  Widget build(BuildContext context) {
    return FollowingContainer(
      builder: (BuildContext context, Map<String, AppUser> following) {
        return PostsContainer(
          builder: (BuildContext context, List<Post> posts) {
            print('following auth_state: $following');
            print('posts: ${posts.length}');
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.camera_alt_outlined),
                  onPressed: () {
                    //todo
                  },
                ),
                title: const Text('Instagram'),
                centerTitle: true,
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      StoreProvider.of<AppState>(context).dispatch(const SignOut());
                      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.login, (_) => false);
                    },
                  ),
                ],
                /*bottom: PreferredSize(
            preferredSize: const Size(0, 104),
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: <Widget>[
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(64),
                          child: Image.asset(
                            instagramLogoPath,
                            fit: BoxFit.cover,
                            width: 80,
                            height: 80,
                            errorBuilder: (BuildContext context, Object error, StackTrace stackTrace) =>
                                const Icon(Icons.error),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                    ],
                  );
                },
              ),
            ),
          ),*/
              ),
              body: posts.isEmpty || following.isEmpty
                  ? const Center(
                      child: Text('No posts yet.'),
                    )
                  : SafeArea(
                      child: ListView.builder(
                        itemCount: posts.length,
                        itemBuilder: (BuildContext context, int index) {
                          final Post post = posts[index];
                          final AppUser user = following[post.uid];
                          return Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Column(
                              children: <Widget>[
                                Row(
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
                                    Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            '${user.username}',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        if (post.lat != null || post.lng != null)
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 4),
                                            child: Text('${post.lat} / ${post.lng}'),
                                          )
                                        else
                                          const SizedBox.shrink()
                                      ],
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      icon: const Icon(Icons.settings_rounded),
                                      onPressed: () {
                                        //todo
                                      },
                                    ),
                                  ],
                                ),
                                //todo add multiple images and circle loading
                                Image.network(post.images.first),
                                const SizedBox(height: 4),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                        padding: const EdgeInsets.only(left: 4.0),
                                        child: IconButton(
                                          icon: const Icon(Icons.favorite_border_outlined),
                                          onPressed: () {},
                                          iconSize: 32,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                      child: InkWell(
                                        child: const Icon(Icons.messenger_outline, size: 32),
                                        onTap: () {
                                          StoreProvider.of<AppState>(context)
                                              .dispatch(UpdateCommentInfo(postId: post.id, uid: post.uid));
                                          Navigator.pushNamed(context, AppRoutes.comments);
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16.0, bottom: 4),
                                      child: IconButton(
                                        icon: const Icon(Icons.send_outlined),
                                        onPressed: () {},
                                        iconSize: 32,
                                      ),
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0, bottom: 8),
                                      child: IconButton(
                                        icon: const Icon(Icons.bookmark_border_outlined),
                                        onPressed: () {},
                                        iconSize: 36,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                                  child: Align(
                                    child: Text(
                                      '${post.likes} likes',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                ),
                                if (post.description == null || post.description.isEmpty)
                                  const SizedBox.shrink()
                                else
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Builder(
                                      builder: (BuildContext context) {
                                        final String description = post.description;
                                        final List<String> tags = post.tags.asList();
                                        final List<String> users = post.users.asList();
                                        String text = '';
                                        // ignore: avoid_function_literals_in_foreach_calls
                                        users.forEach((String user) => text = '$text @$user \n');
                                        text = text + '$description \n';
                                        // ignore: avoid_function_literals_in_foreach_calls
                                        tags.forEach((String tag) => text = text + '#$tag ');
                                        return Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: ReadMoreText(
                                            text,
                                            trimLines: 2,
                                            colorClickableText: Colors.grey,
                                            trimMode: TrimMode.Line,
                                            trimCollapsedText: 'Show more',
                                            trimExpandedText: 'Show less',
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: const Align(
                                      child: Text(
                                        'Show comments',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      alignment: Alignment.centerLeft,
                                    ),
                                    onTap: () {
                                      StoreProvider.of<AppState>(context)
                                          .dispatch(UpdateCommentInfo(postId: post.id, uid: post.uid));
                                      Navigator.pushNamed(context, AppRoutes.comments);
                                    },
                                  ),
                                ),
                                const Divider(),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
            );
          },
        );
      },
    );
  }
}
