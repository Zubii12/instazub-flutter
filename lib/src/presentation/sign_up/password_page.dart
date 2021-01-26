import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instazub/src/actions/index.dart';
import 'package:instazub/src/models/index.dart';
import 'package:instazub/src/presentation/mixin/dialog_mixin.dart';
import 'package:instazub/src/presentation/routes.dart';

class PasswordPage extends StatelessWidget with DialogMixin {
  const PasswordPage({Key key}) : super(key: key);

  void _response(BuildContext context, AppAction action) {
    if (action is SignUpSuccessful) {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home, (_) => false);
    } else if (action is SignUpError) {
      showErrorDialog(context, 'Signup error', action.error);
    }
  }

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
                  'Create a password',
                  style: TextStyle(fontSize: 32),
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
                      hintText: 'Password',
                    ),
                    onChanged: (String password) {
                      StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(password: password));
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
                      StoreProvider.of<AppState>(context).dispatch(SignUp((AppAction action) {
                        _response(context, action);
                      }));
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
