import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instazub/src/actions/index.dart';
import 'package:instazub/src/containers/auth/index.dart';
import 'package:instazub/src/models/index.dart';
import 'package:instazub/src/presentation/routes.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        return Scaffold(
          appBar: AppBar(
            leading: InkWell(
              child: const Icon(Icons.search),
              onTap: () async {
                final dynamic user = await Navigator.pushNamed(context, AppRoutes.searchUsers);
                if (user is AppUser) {
                  StoreProvider.of<AppState>(context)
                  //todo open profile page
                      .dispatch(UpdateFollowing(add: user.uid));
                }
              },
            ),
          ),
        );
      },
    );
  }
}
