import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Login with Google",
                ))
          ],
        ),
      ),
    );
  }
}
