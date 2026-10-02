import 'package:balanacerpro/constants/colors.dart';
import 'package:balanacerpro/constants/font_sizes.dart';
import 'package:balanacerpro/widgets/background.dart';
import 'package:flutter/material.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 844,

        child: Scaffold(
          body: GradientBackground(
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
                        AnimatedContainer(
                          width: 358,
                          height: 250,
                          color: BalancerColors.black,
                          duration: Duration(seconds: 4),
                        );
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: BalancerColors.black,
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
