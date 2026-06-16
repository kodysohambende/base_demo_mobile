import 'dart:async';

import 'package:base_demo_ob/framework/utils/extension/context_extension.dart';
import 'package:base_demo_ob/ui/routing/navigation_stack_item.dart';
import 'package:base_demo_ob/ui/routing/stack.dart';
import 'package:base_demo_ob/ui/utils/theme/app_colors.dart';
import 'package:base_demo_ob/ui/utils/widgets/common_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashWeb extends ConsumerStatefulWidget {
  const SplashWeb({super.key});

  @override
  ConsumerState<SplashWeb> createState() => _SplashWebConsumerState();
}

class _SplashWebConsumerState extends ConsumerState<SplashWeb> {
  
  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 2),
        () => ref.read(navigationStackController).pushRemove(NavigationStackItem.home())
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CommonContainer(
          height: context.height * 0.2,
          width: context.height * 0.2,
          color: AppColors.clrBlue1E88E5,
        ),
      ),
    );
  }
}
