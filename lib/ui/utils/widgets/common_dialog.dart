import 'package:base_demo_ob/ui/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CommonDialog {
  static Future<void> showConfirmDialog(
    BuildContext context, {
    required Widget body,

  }) {
    return showDialog(  ///show dialog in actions
      context: context,

      builder: (_) => AlertDialog(
        backgroundColor: AppColors.clrWhiteFFFFFF,

        actions: [
          body
        ],
      ),
    );
  }
}
