part of auth_containers;

class FollowingContainer extends StatelessWidget {
  const FollowingContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Map<String, AppUser>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, AppUser>>(
      converter: (Store<AppState> store) => store.state.auth.following.asMap(),
      builder: builder,
    );
  }
}
