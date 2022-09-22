import 'dart:async';
import 'package:flutter/material.dart';
import 'package:main_project/utils/colors.dart';
import 'package:main_project/utils/images.dart';
import '../../onboarding/view/onboarding_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnBoardingScreen(),
          ),
        ),
      );
    });
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: Center(
        child: Image.asset(
          splashImage,
          width: 350,
        ),
      ),
    );
  }
}
