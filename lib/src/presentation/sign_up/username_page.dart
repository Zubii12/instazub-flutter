import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instazub/src/actions/index.dart';
import 'package:instazub/src/models/index.dart';
import 'package:instazub/src/presentation/routes.dart';

class UsernamePage extends StatelessWidget {
  const UsernamePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Column(
              children: <Widget>[
                const Text(
                  'Add your username',
                  style: TextStyle(fontSize: 32),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Add your name so your friends can find you',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 80,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintText: 'Username',
                    ),
                    onChanged: (String username) {
                      StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(username: username));
                    },
                  ),
                ),
                const SizedBox(height: 16),
                ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width - 80,
                  height: MediaQuery.of(context).size.height - 760,
                  child: RaisedButton(
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.password);
                    },
                  ),
                ),
                const Spacer(),
                const Divider(
                  color: Colors.grey,
                  height: 8,
                ),
                const SizedBox(height: 8),
                Text.rich(
                  TextSpan(
                    text: 'Already have an account? ',
                    style: const TextStyle(fontSize: 16.0, color: Colors.grey),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Login!',
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, AppRoutes.login);
                          },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
