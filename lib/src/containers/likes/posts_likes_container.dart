part of likes_containers;

class PostsLikesContainer extends StatelessWidget {
  const PostsLikesContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Map<String, List<Like>>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, List<Like>>>(
      converter: (Store<AppState> store) {
        final Map<String, BuiltList<Like>> posts = store.state.likes.posts.asMap();
        final Map<String, List<Like>> newPosts = <String, List<Like>>{};
        for (final String id in posts.keys) {
          newPosts[id] = posts[id].asList();
        }
        return newPosts;
      },
      builder: builder,
    );
  }
}
