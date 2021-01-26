
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instazub/src/models/index.dart';
import 'package:instazub/src/presentation/mixin/init_mixin.dart';
import 'package:instazub/src/presentation/routes.dart';
import 'package:redux/redux.dart';
import 'package:instazub/src/actions/index.dart';

void main() {
  runApp(const Instazub());
}

class Instazub extends StatefulWidget {
  const Instazub({Key key}) : super(key: key);

  @override
  _InstazubState createState() => _InstazubState();
}

class _InstazubState extends State<Instazub> with InitMixin<Instazub> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
        if (snapshot.hasData) {
          final Store<AppState> store = snapshot.data;
          return StoreProvider<AppState>(
            store: store,
            child: MaterialApp(
              title: 'Instagram clone',
              theme: ThemeData(
                brightness: Brightness.dark,
                backgroundColor: Colors.black,
                scaffoldBackgroundColor: Colors.black,
              ),
              routes: AppRoutes.routes,
            ),
          );
        } else {
          if (snapshot.hasError) {
            throw snapshot.error;
          }

          return MaterialApp(
            title: 'Instagram clone',
            theme: ThemeData(brightness: Brightness.dark),
            home: const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}
