import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        width: 200,
        height: 200,
        child: Image.asset('assets/images/app_splash_logo.png'),
      ),
    );
  }
}