import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instazub/src/actions/index.dart';
import 'package:instazub/src/constants/paths.dart';
import 'package:instazub/src/models/index.dart';
import 'package:instazub/src/presentation/mixin/dialog_mixin.dart';
import 'package:instazub/src/presentation/routes.dart';

class LoginPage extends StatelessWidget with DialogMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void _response(BuildContext context, AppAction action) {
    if (action is LoginSuccessful) {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home, (_) => false);
    } else if (action is LoginError) {
      showErrorDialog(context, 'Login error', action.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    _email.text = 'zubii1@yahoo.com';
    _password.text = 'zubii1';
    print('height ${MediaQuery.of(context).size.height}');
    print('width ${MediaQuery.of(context).size.width}');
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 122.0),
              Center(
                child: Image.asset(
                  instagramDarkLogoPath,
                  width: 216,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0),
                child: TextFormField(
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  validator: (String email) {
                    if (email.isEmpty) {
                      return 'Please enter an email';
                    } else if (!email.contains('@')) {
                      return 'The email must contains "@"';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: TextFormField(
                  controller: _password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  validator: (String password) {
                    if (password.isEmpty) {
                      return 'Please enter a password';
                    } else if (password.length < 4) {
                      return 'The password is too short';
                    } else if (password == 'qwerty' || password == '1234' || password == '0000') {
                      return 'The password provided is too weak.';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, bottom: 16),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    child: const Text(
                      'You forgot the password?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () => Navigator.pushNamed(context, AppRoutes.forgotPassword),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 360,
                height: 66,
                child: RaisedButton(
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      StoreProvider.of<AppState>(context).dispatch(Login(
                          email: _email.text,
                          password: _password.text,
                          response: (AppAction action) {
                            _response(context, action);
                          }));
                      // ..dispatch(GetFollowing(StoreProvider.of<AppState>(context).state.auth.user.following.asList()))
                      // ..dispatch(LoadPosts(StoreProvider.of<AppState>(context).state.auth.user.following.asList()));
                    }
                  },
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                'OR',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 32),
              Material(
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      facebookDarkLogoPath,
                      height: 24,
                      width: 24,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Log in with Facebook',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
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
                  text: 'Dont\'t have an account? ',
                  style: const TextStyle(fontSize: 16.0, color: Colors.grey),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign up!',
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, AppRoutes.signUp);
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
    );
  }
}
