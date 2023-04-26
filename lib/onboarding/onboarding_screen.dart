import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const RiveAnimation.asset(
          "assets/RiveAssets/shapes.riv",
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 20,
              sigmaY: 10,
            ),
            child: const SizedBox(),
          ),
        ),
        Positioned(child: Image.asset("assets/Backgrounds/Spline.png")),
      ]),
    );
  }
}
