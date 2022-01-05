import 'dart:ui';

import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'LoginScreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  String phone = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset('assets/images/dart-logo.png'),
                Container(
                  padding: const EdgeInsets.only(top: kDefaultPadding),
                  child: const Text(
                    'Введите логин в виде 10 цифр номера телефона',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: kDefaultPadding),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    onChanged: (value) {
                      phone = value;
                    },
                    decoration: kInputDecoration.copyWith(
                      hintText: '+7',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: kDefaultPadding),
                  child: TextField(
                    obscureText: true,
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: kInputDecoration.copyWith(
                      hintText: '*****',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: kDefaultPadding,
                    horizontal: 100,
                  ),
                  width: 160,
                  child: TextButton(
                    style: kButtonStyle,
                    child: const Text(
                      'Войти',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () async {
                      try {
                        setState(() {
                          showSpinner = true;
                        });
                      } catch (e) {
                        print(e);
                      }
                      setState(() {
                        showSpinner = false;
                      });
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: kDefaultPadding),
                  child: const Text(
                    'Регистрация',
                    style: kBigLinkTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: kDefaultPadding),
                  child: const InkWell(
                    child: Text(
                      'Забыли пароль?',
                      style: kBigLinkTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
