part of comments_containers;

class CommentsContainer extends StatelessWidget {
  const CommentsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Comment>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Comment>>(
      converter: (Store<AppState> store) => store.state.comments.comments.asList(),
      builder: builder,
    );
  }
}
