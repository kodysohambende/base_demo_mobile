import 'package:base_demo_ob/ui/error/web/error_404_web.dart';
import 'package:base_demo_ob/ui/utils/app_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Error404 extends ConsumerStatefulWidget {
  final ErrorType? errorType;
  const Error404({Key? key,this.errorType}) : super(key: key);

  @override
  ConsumerState<Error404> createState() => _Error404State();
}

class _Error404State extends ConsumerState<Error404>  with WidgetsBindingObserver{
  ///Init
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) async {});
  }

  ///Dispose
  @override
  void dispose() {
    super.dispose();
  }

  ///Build
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) {
        return ErrorWeb(errorType: widget.errorType);
      },
      desktop: (BuildContext context) {
        return ErrorWeb(errorType: widget.errorType);
      },
      tablet: (BuildContext context) {
        return ErrorWeb(errorType: widget.errorType);
      },
    );
  }
}