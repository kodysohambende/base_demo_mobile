import 'package:base_demo_ob/ui/home/mobile/home_mobile.dart';
import 'package:base_demo_ob/ui/home/web/home_web.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => HomeMobile(),
      desktop: (context) => HomeWeb(),
    );
  }
}
