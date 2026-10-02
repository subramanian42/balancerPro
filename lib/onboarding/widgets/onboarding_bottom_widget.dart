import 'package:flutter/material.dart';

class OnboardingBottomWidget extends StatefulWidget {
  const OnboardingBottomWidget({super.key});

  @override
  State<OnboardingBottomWidget> createState() => _OnboardingBottomWidgetState();
}

class _OnboardingBottomWidgetState extends State<OnboardingBottomWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  late final Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _slideAnimation = Tween<Offset>(
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
      position: _slideAnimation,
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(24),
        ),
        child: const Center(
          child: Text('Bottom Widget', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
