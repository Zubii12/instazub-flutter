part of comments_containers;

class CommentInfoContainer extends StatelessWidget {
  const CommentInfoContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<CommentInfo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CommentInfo>(
      converter: (Store<AppState> store) => store.state.comments.info,
      builder: builder,
    );
  }
}
