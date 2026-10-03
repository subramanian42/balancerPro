import 'package:balanacerpro/constants/colors.dart';
import 'package:balanacerpro/constants/font_sizes.dart';
import 'package:balanacerpro/constants/images.dart';
import 'package:balanacerpro/signup_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool _showWelcomePopup = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 850,
        width: 350,
        child: Material(
          child: SignupScreen(
            showWelcomePopup: _showWelcomePopup,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 48,
                    vertical: 116.5,
                  ),
                  child: Image.asset(height: 300, Images.onboardingLogo),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 125),
                  child: const Text(
                    'BalancePro',
                    style: TextStyle(
                      color: BalancerColors.accent,
                      fontSize: FontSizes.mobileHeading_5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                const SizedBox(height: FontSizes.mobileHeading_3),

                const Text(
                  'Managing your\nfinances',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: FontSizes.mobileHeading_3,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: SizedBox(
                    width: 358,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _showWelcomePopup = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45),
                        ),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 28),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
