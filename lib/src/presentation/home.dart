import 'package:flutter/material.dart';
import 'package:instazub/src/containers/index.dart';
import 'package:instazub/src/models/index.dart';
import 'package:instazub/src/presentation/home/home_page.dart';
import 'package:instazub/src/presentation/login/login_page.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        if (user == null) {
          return LoginPage();
        } else {
          return const HomePage();
        }
      },
    );
  }
}
