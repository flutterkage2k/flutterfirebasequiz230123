import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutterfirebasequiz230123/services/auth.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    InternetConnectionChecker().onStatusChange.listen((status) {
      final connected = status == InternetConnectionStatus.connected;
      showSimpleNotification(
        Text(
          connected ? 'Connected to internet' : 'No internet',
        ),
        background: Colors.green,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double userWidth = screenSize.width;
    double userHeight = screenSize.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: userWidth / 1.5,
              height: userHeight / 3,
              child: Placeholder(),
            ),
            const SizedBox(
              height: 22,
            ),
            const Text(
              'Quiz App',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SignInButton(Buttons.GoogleDark, onPressed: () async {
              await signWithGoogle();
            })
          ],
        ),
      ),
    );
  }
}
