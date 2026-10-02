import 'package:balanacerpro/constants/colors.dart';
import 'package:flutter/material.dart';

class WelcomePopup extends StatelessWidget {
  const WelcomePopup({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 342,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: BalancerColors.black,
            borderRadius: BorderRadius.circular(28),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Welcome to BalancePro!',

                textAlign: TextAlign.center,
                style: TextStyle(
                  color: BalancerColors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Take control of your finances with ease.',
                textAlign: TextAlign.center,

                style: TextStyle(
                  color: BalancerColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),

              const SizedBox(height: 24),

              SizedBox(
                width: 320,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          BalancerColors.black,
                        ),
                      ),
                      child: const Text('Sign up'),
                    ),

                    const SizedBox(width: 12),

                    OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          BalancerColors.white,
                        ),
                      ),
                      child: const Text('Sign in'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
