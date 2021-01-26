import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instazub/src/constants/paths.dart';
import 'package:instazub/src/presentation/routes.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Center(
            child: Image.asset(
              instagramCoverPath,
              width: 504,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: MediaQuery.of(context).size.width - 64,
            height: MediaQuery.of(context).size.height - 776,
            child: RaisedButton(
              child: const Text(
                'Sign up with Facebook',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.facebookSignUp);
              },
            ),
          ),
          const SizedBox(height: 32),
          const Text(
            'OR',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 32),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.emailOrPhoneSignUp);
            },
            child: const Text(
              'Sign up with phone or email',
              style: TextStyle(color: Colors.blue),
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
    );
  }
}
