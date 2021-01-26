import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instazub/src/actions/index.dart';
import 'package:instazub/src/models/index.dart';
import 'package:instazub/src/presentation/routes.dart';

class SignUpWithEmailOrPhonePage extends StatefulWidget {
  @override
  _SignUpWithEmailOrPhonePageState createState() => _SignUpWithEmailOrPhonePageState();
}

class _SignUpWithEmailOrPhonePageState extends State<SignUpWithEmailOrPhonePage> with SingleTickerProviderStateMixin {
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TabController _tabController;

  final List<Tab> tabs = const <Tab>[
    Tab(text: 'Phone'),
    Tab(text: 'Email'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _email.text = 'zubii1@yahoo.com';
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
    _tabController.dispose();
    _email.dispose();
    _phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign up with email or phone'),
          bottom: TabBar(
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 4.0, color: Colors.white),
              insets: EdgeInsets.symmetric(horizontal: 16.0),
            ),
            controller: _tabController,
            labelStyle: const TextStyle(color: Colors.blue, fontSize: 20),
            tabs: tabs,
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: tabs.map((Tab tab) {
              final String label = tab.text;
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 80,
                        child: TextFormField(
                          enabled: label == 'Email',
                          controller: label == 'Email' ? _email : _phone,
                          keyboardType: label == 'Email' ? TextInputType.emailAddress : TextInputType.phone,
                          decoration: InputDecoration(
                            prefixIcon: label == 'Email'
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
                              onTap: () => label == 'Email' ? _email.clear() : _phone.clear(),
                            ),
                            hintText: label == 'Email' ? 'Email' : 'Phone',
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                          validator: label == 'Email'
                              ? (String email) {
                                  if (email.isEmpty) {
                                    return 'Please enter an email';
                                  } else if (!email.contains('@')) {
                                    return 'The email must contains "@"';
                                  }
                                  return null;
                                }
                              : (String phone) {
                                  if (phone.isEmpty) {
                                    return 'Please enter a phone number';
                                  } else if (phone.length != 10) {
                                    return 'The number provided must have 10 digits';
                                  }
                                  return null;
                                },
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ButtonTheme(
                          minWidth: MediaQuery.of(context).size.width - 48,
                          height: MediaQuery.of(context).size.height - 760,
                          child: RaisedButton(
                            child: label == 'Email'
                                ? const Text(
                                    'Continue',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                  )
                                : const Text(
                                    'Disabled',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                  ),
                            color: Colors.blue,
                            onPressed: label == 'Email'
                                ? _email.text.isEmpty
                                    ? null
                                    : () {
                                        if (_formKey.currentState.validate()) {
                                          StoreProvider.of<AppState>(context)
                                              .dispatch(UpdateRegistrationInfo(email: _email.text));
                                          Navigator.pushNamed(context, AppRoutes.username);
                                        }
                                      }
                                : null,
                          ),
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
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
