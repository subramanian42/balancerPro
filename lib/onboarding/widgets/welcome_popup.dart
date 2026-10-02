import 'package:balanacerpro/account_creation/create_account_1.dart';
import 'package:balanacerpro/constants/colors.dart';
import 'package:flutter/material.dart';

class WelcomePopup extends StatefulWidget {
  const WelcomePopup({super.key});

  @override
  State<WelcomePopup> createState() => _WelcomePopupState();
}

class _WelcomePopupState extends State<WelcomePopup>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: BalancerColors.black,
            borderRadius: BorderRadius.circular(28),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: AlignmentGeometry.topLeft,

                child: Image.asset(
                  "assets/welcome_screen_logo.png",
                  height: 54,
                  width: 54,
                ),
              ),

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
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CreateAccount1(),
                        ),
                      ),
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
