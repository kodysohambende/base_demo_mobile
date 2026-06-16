import 'package:base_demo_ob/framework/utils/extension/context_extension.dart';
import 'package:base_demo_ob/ui/utils/widgets/common_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeWeb extends ConsumerStatefulWidget {
  const HomeWeb({super.key});

  @override
  ConsumerState<HomeWeb> createState() => _HomeWebConsumerState();
}

class _HomeWebConsumerState extends ConsumerState<HomeWeb> {

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CommonContainer(
          height: context.height * 0.2,
          width: context.height * 0.2,
        ),
      )
    );
  }
}
