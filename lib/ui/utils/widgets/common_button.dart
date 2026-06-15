import 'package:base_demo_ob/ui/utils/theme/app_colors.dart';
import 'package:base_demo_ob/ui/utils/widgets/common_icon.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {

  final double? height;
  final double? width;
  final void Function() onTap;
  final Color? buttonColor;
  final Color? borderColor;
  final BorderRadiusGeometry? borderRadius;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final bool? showIcon;
  final IconData? icon;

  const CommonButton({super.key, required this.onTap, this.buttonColor, this.borderRadius, required this.buttonText, this.buttonTextStyle, this.height, this.width, this.showIcon, this.icon, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: borderRadius,
          border: Border.all(
            color: borderColor ?? AppColors.clrWhiteFFFFFF,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: .center,
            children: [
              if(showIcon ?? false)
              CommonIcon(
                icon: icon,
                color: AppColors.clrWhiteFFFFFF,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                  buttonText,
                style: buttonTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
