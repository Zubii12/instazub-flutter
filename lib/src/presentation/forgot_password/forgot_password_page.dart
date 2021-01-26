import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instazub/src/actions/auth/index.dart';
import 'package:instazub/src/constants/paths.dart';
import 'package:instazub/src/models/index.dart';
import 'package:instazub/src/presentation/routes.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> with SingleTickerProviderStateMixin {
  TabController _tabController;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final List<Tab> tabs = const <Tab>[
    Tab(text: 'Email'),
    Tab(text: 'Phone'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length, initialIndex: 1) //
      ..addListener(() {
        setState(() {});
      });
    _email.addListener(() {
      if (_email.text.isNotEmpty) {
        setState(() {});
      }
    });
    _phone.addListener(() {
      if (_phone.text.isNotEmpty) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _email.dispose();
    _phone.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isEmail = _tabController.index == 0;
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          //title: const Text('Problems with connections?'),
          bottom: PreferredSize(
            preferredSize: const Size(20, 144),
            child: Column(
              children: <Widget>[
                const Icon(
                  Icons.lock,
                  size: 40,
                ),
                const SizedBox(height: 8),
                const Text('Connection problems?'),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.only(left: 56, right: 56),
                  child: Text(
                    'Enter the email address or phone number and we will send you a link to reconnect',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16),
                TabBar(
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(width: 4.0, color: Colors.white),
                    insets: EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                  labelStyle: const TextStyle(color: Colors.blue, fontSize: 20),
                  tabs: tabs,
                  controller: _tabController,
                ),
              ],
            ),
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: tabs.map((Tab tab) {
            return Column(
              children: <Widget>[
                const SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 72,
                  child: TextFormField(
                    controller: isEmail ? _email : _phone,
                    keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: isEmail
                          ? null
                          : const Text(
                              'RO +40 ',
                              style: TextStyle(color: Colors.blue),
                            ),
                      prefixIconConstraints: const BoxConstraints(
                        minHeight: 24,
                        minWidth: 32,
                      ),
                      suffixIcon: InkWell(
                        child: const Icon(
                          Icons.clear,
                          color: Colors.grey,
                        ),
                        onTap: () => isEmail ? _email.clear() : _phone.clear(),
                      ),
                      hintText: isEmail ? 'Email' : 'Phone',
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    validator: (String value) {
                      if (isEmail) {
                        if (value.isEmpty) {
                          return 'Please enter an email';
                        } else if (!value.contains('@')) {
                          return 'The email must contains "@"';
                        }
                        return null;
                      } else {
                        if (value.isEmpty) {
                          return 'Please enter a phone number';
                        } else if (value.length != 10) {
                          return 'The number provided must have 10 digits';
                        }
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(height: 16),
                ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width - 48,
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
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        if (isEmail) {
                          StoreProvider.of<AppState>(context).dispatch(ResetPassword(email: _email.text));
                          await showDialog<void>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    title: const Text('Email sent'),
                                    content: const Text(
                                        'An email was send to the email address that you entered. Please check an click on the link you received.'),
                                    actions: <Widget>[
                                      FlatButton(
                                        child: const Text('OK'),
                                        onPressed: () {
                                          Navigator.pop(context);
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ));
                        } else {
                          /// todo
                          return null;
                        }
                      }
                    },
                  ),
                ),
                const Expanded(child: SizedBox(height: 32)),
                Stack(
                  children: <Widget>[
                    Divider(
                      color: Colors.grey,
                      height: 20,
                      endIndent: MediaQuery.of(context).size.width / 2 + 24,
                    ),
                    const Center(
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 20,
                      indent: MediaQuery.of(context).size.width / 2 + 24,
                    )
                  ],
                ),
                const SizedBox(height: 16),
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
                      const SizedBox(width: 16),
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
                SizedBox(height: MediaQuery.of(context).size.height - 554),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(bottom: 12.0),
                          child: Divider(color: Colors.grey, thickness: 0.8),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, AppRoutes.login);
                              },
                              child: const Text(
                                'Back to login',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
