import 'package:base_demo_ob/framework/controller/user/user_controller.dart';
import 'package:base_demo_ob/framework/utils/extension/context_extension.dart';
import 'package:base_demo_ob/ui/utils/theme/app_colors.dart';
import 'package:base_demo_ob/ui/utils/widgets/common_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeMobile extends ConsumerStatefulWidget {
  const HomeMobile({super.key});

  @override
  ConsumerState<HomeMobile> createState() => _HomeMobileConsumerState();
}

class _HomeMobileConsumerState extends ConsumerState<HomeMobile> {

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(userProvider).getUsers();
      ref.read(userProvider).addUser(nameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {

    // final controller = ref.watch(userProvider);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CommonContainer(
              height: context.height * 0.2,
              width: context.height * 0.2,
              color: AppColors.clrYellowF9A825,
            ),
            // ListView.builder(
            //   itemCount: controller.users.length,
            //   itemBuilder: (_, index) {
            //
            //     return Text(
            //       controller.users[index].name ?? "",
            //     );
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
