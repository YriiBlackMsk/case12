import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utilities/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late SharedPreferences sharedPrefs;
  bool showSpinner = false;
  String phone = '';
  String password = '';
  var phoneInputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) {
      setState(() {
        sharedPrefs = prefs;
        phoneInputController.text = sharedPrefs.getString('phone') ?? '';
      });
    });
  }

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
                    controller: phoneInputController,
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
                    child: Text(
                      'Войти',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.background,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () async {
                      try {
                        sharedPrefs.setString('phone', phone);
                        setState(() {
                          showSpinner = true;
                        });
                      } catch (e) {
                        print(e);
                      }
                      setState(() {
                        print('phone:$phone; password:$password');
                        showSpinner = false;
                      });
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: kDefaultPadding),
                  child: Text(
                    'Регистрация',
                    style: kBigLinkTextStyle.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: kDefaultPadding),
                  child: const Text(
                    'Забыли пароль?',
                    style: kBigLinkTextStyle,
                    textAlign: TextAlign.center,
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
