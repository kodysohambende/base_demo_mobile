import 'package:base_demo_ob/ui/splash/web/splash_web.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => SplashWeb(),
      desktop: (context) => SplashWeb(),
    );
  }
}
