import 'package:base_demo_ob/framework/utils/extension/context_extension.dart';
import 'package:base_demo_ob/ui/utils/theme/app_colors.dart';
import 'package:base_demo_ob/ui/utils/widgets/common_container.dart';
import 'package:flutter/material.dart';

class SplashMobile extends StatefulWidget {
  const SplashMobile({super.key});

  @override
  State<SplashMobile> createState() => _SplashMobileState();
}

class _SplashMobileState extends State<SplashMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CommonContainer(
          height: context.height * 0.2,
          width: context.height * 0.2,
          color: AppColors.clrGreen1B5E20,
        ),
      ),
    );
  }
}
