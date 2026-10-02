import 'package:balanacerpro/constants/font_sizes.dart';
import 'package:balanacerpro/onboarding/onboarding_screen_1.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ColoredBox(
            color: Colors.black,
            child: Center(
              child: Image.asset(
                height: FontSizes.logoHeaderSize,
                "assets/balancer_app_logo.png",
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => OnboardingScreen1()),
            ),
            child: Text("press me "),
          ),
        ],
      ),
    );
  }
}
