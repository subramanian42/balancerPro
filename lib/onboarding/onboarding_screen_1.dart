import 'package:balanacerpro/constants/font_sizes.dart';
import 'package:balanacerpro/widgets/background.dart';
import 'package:flutter/material.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  bool _showWelcomePopup = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 850,
        width: 350,
        child: Material(
          child: GradientBackground(
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
                  child: Image.asset(
                    height: 300,
                    "assets/onboarding_logo_1.png",
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 100),
                  child: const Text(
                    'BalancePro',
                    style: TextStyle(
                      color: Color(0xFFD9D9D9),
                      fontSize: FontSizes.mobileHeading_3,
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
                    fontSize: FontSizes.mobileHeading_5,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: SizedBox(
                    width: 342,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _showWelcomePopup = !_showWelcomePopup;
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
