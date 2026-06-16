import 'package:base_demo_ob/ui/utils/app_constants/app_constants.dart';
import 'package:easy_localization/easy_localization.dart';
//import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:base_demo_ob/framework/dependecy_injection/injection.dart';
import 'package:base_demo_ob/ui/routing/delegate.dart';
import 'package:base_demo_ob/ui/routing/parser.dart';
import 'package:base_demo_ob/ui/routing/stack.dart';
import 'package:base_demo_ob/ui/utils/widgets/no_thumb_scroll_indicator.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  await configureDependencies();

  await Hive.initFlutter();
  await Hive.openBox(AppConstants.userBoxName);

  runApp(
    EasyLocalization(
      supportedLocales: const <Locale>[Locale('en'), Locale('ar')],
      useOnlyLangCode: true,
      path: 'assets/lang',
      child: ProviderScope(child: const MyApp()),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      AppConstants.constant.globalRef = ref;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: AppConstants.appName,
        theme: ThemeData(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        supportedLocales: EasyLocalization.of(context)!.supportedLocales,
        scrollBehavior: NoThumbScrollBehavior().copyWith(scrollbars: false),
        localizationsDelegates: context.localizationDelegates,
        locale: EasyLocalization.of(context)!.locale,
        routerDelegate: getIt<MainRouterDelegate>(param1: ref.read(navigationStackController)),
        routeInformationParser: getIt<MainRouterInformationParser>(param1: ref, param2: context),
      );
  }
}