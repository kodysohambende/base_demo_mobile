import 'package:base_demo_ob/framework/utils/extension/context_extension.dart';
import 'package:base_demo_ob/framework/utils/session.dart';
import 'package:base_demo_ob/ui/utils/app_enum.dart';
import 'package:base_demo_ob/ui/utils/theme/text_styles.dart';
import 'package:base_demo_ob/ui/utils/widgets/common_button.dart';
import 'package:base_demo_ob/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ErrorWeb extends ConsumerStatefulWidget {
  final ErrorType? errorType;

  const ErrorWeb({super.key, this.errorType = ErrorType.error404});

  @override
  ConsumerState<ErrorWeb> createState() => _ErrorWebState();
}

class _ErrorWebState extends ConsumerState<ErrorWeb> {
  String errorAsset = '';
  String buttonText = '';
  String title = 'LocaleKeys.keyDeniedActionTitle.localized';
  String subTitle = 'LocaleKeys.keyDeniedActionSubtitle.localized';

  @override
  void initState() {
    super.initState();
    print('Session.userAccessToken ${Session.userAccessToken}');
    print('Session.userAccessToken ${widget.errorType}');

    switch (widget.errorType) {
      case ErrorType.error403:
        buttonText = 'keyBackToLogin';
        break;
      case ErrorType.error404:
        if (Session.userAccessToken.isNotEmpty ||
            Session.userAccessToken != '') {
          buttonText = 'LocaleKeys.keyBackToHome.localized';
        } else {
          buttonText = 'LocaleKeys.keyBackToLogin.localized';
          title = 'LocaleKeys.keyLoginActionTitle.localized';
          subTitle = 'LocaleKeys.keyLoginActionSubtitle.localized';
        }
        break;
      case ErrorType.noInternet:
        buttonText = 'LocaleKeys.keyRefresh.localized';
      default:
        buttonText = 'LocaleKeys.keyBackToHome.localized';
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: context.height * 0.16,
              width: context.height * 0.16,
              child: Image.asset(errorAsset),
            ),
            SizedBox(height: context.height * 0.024),

            CommonText(
              data: title,
              style: TextStyles.bold.copyWith(fontSize: 24),
            ),
            SizedBox(height: context.height * 0.01),
            CommonText(
              data: subTitle,
              style: TextStyles.regular.copyWith(fontSize: 16),
            ),
            SizedBox(height: context.height * 0.024),
            CommonButton(
              width: context.width * 0.20,
              height: context.height * 0.058,
              buttonText: buttonText,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}