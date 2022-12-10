import 'package:flutter/material.dart';
import 'package:quiz_app/configs/themes/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.mainGradient(context),
      ),
      alignment: Alignment.center,
      child: Image.asset(
        'assets/images/app_splash_logo.png',
        width: 200,
        height: 200,
      ),
    );
  }
}
