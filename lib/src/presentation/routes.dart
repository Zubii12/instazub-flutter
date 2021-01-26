import 'package:flutter/cupertino.dart';
import 'package:instazub/src/presentation/add_post/add_post_page.dart';
import 'package:instazub/src/presentation/add_post/post_details.dart';
import 'package:instazub/src/presentation/feed/comments_page.dart';
import 'package:instazub/src/presentation/forgot_password/forgot_password_page.dart';
import 'package:instazub/src/presentation/home.dart';
import 'package:instazub/src/presentation/home/home_page.dart';
import 'package:instazub/src/presentation/login/login_page.dart';
import 'package:instazub/src/presentation/sign_up/password_page.dart';
import 'package:instazub/src/presentation/sign_up/sign_up_page.dart';
import 'package:instazub/src/presentation/sign_up/sign_up_with_email_or_phone_page.dart';
import 'package:instazub/src/presentation/sign_up/username_page.dart';
import 'package:instazub/src/presentation/widgets/search_users_page.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';
  static const String homePage = '/homePage';
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String username = '/username';
  static const String password = '/password';
  static const String emailOrPhoneSignUp = '/emailOrPhoneSignUp';
  static const String facebookSignUp = '/facebookSignUp';
  static const String forgotPassword = '/forgotPassword';
  static const String addPost = '/addPost';
  static const String postDetails = '/postDetails';
  static const String searchUsers = '/searchUsers';
  static const String comments = '/comments';

  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const Home(),
    homePage: (BuildContext context) => const HomePage(),
    login: (BuildContext context) => LoginPage(),
    signUp: (BuildContext context) => const SignUpPage(),
    username: (BuildContext context) => const UsernamePage(),
    password: (BuildContext context) => const PasswordPage(),
    emailOrPhoneSignUp: (BuildContext context) => SignUpWithEmailOrPhonePage(),
    // todo
    facebookSignUp: (BuildContext context) => null,
    forgotPassword: (BuildContext context) => ForgotPasswordPage(),
    addPost: (BuildContext context) => const AddPostPage(),
    postDetails: (BuildContext context) => const PostDetails(),
    searchUsers: (BuildContext context) => const SearchUsersPage(),
    comments: (BuildContext context) => const CommentsPage(),
  };
}
