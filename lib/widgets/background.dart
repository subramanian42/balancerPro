import 'package:balanacerpro/onboarding/widgets/welcome_popup.dart';
import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;
  final bool showWelcomePopup;
  const GradientBackground({
    super.key,
    required this.child,
    required this.showWelcomePopup,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        const ColoredBox(color: Color(0xFF080D0D)), // base color - black
        Positioned(
          left: -170,
          top: -150,
          child: _RadialLight(color: const Color(0xFF948DE6)),
        ),
        Positioned(
          right: -170,
          top: -100,
          child: _RadialLight(color: const Color(0xFFA5E8EA)),
        ),
        Positioned(
          left: -35,
          top: 250,
          child: _RadialLight(color: const Color(0xFFA9E78D)),
        ),
        Container(color: const Color(0x33000000)), // dark overlay
        child,

        if (showWelcomePopup)
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Center(child: WelcomePopup()),
          ),
      ],
    );
  }
}

class _RadialLight extends StatelessWidget {
  final Color color;

  const _RadialLight({required this.color});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: SizedBox(
        width: 684,
        height: 684,
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              center: Alignment.center,
              radius: 0.5,
              colors: [color, color.withValues(alpha: 0.0)],
              stops: const [0.0, 1.0],
            ),
          ),
        ),
      ),
    );
  }
}
