import 'package:base_demo_ob/ui/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {

  final double? height;
  final double? width;
  final Color? color;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final Gradient? gradient;
  final Color? shadowColor;
  final double? spreadRadius;
  final double? blurRadius;
  final Offset? offset;
  final Widget? child;
  const CommonContainer({super.key, this.height, this.width, this.color, this.borderRadius, this.child, this.gradient, this.shadowColor, this.spreadRadius, this.blurRadius, this.offset, this.border});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          gradient: gradient,
          borderRadius: borderRadius,
          border: border,
          boxShadow: [
            BoxShadow(
              color: shadowColor ??  AppColors.clrWhiteFFFFFF,
              spreadRadius: spreadRadius ?? 0.0,
              blurRadius: blurRadius ?? 0.0,
              offset: offset ?? Offset.zero,
            )
          ]
      ),
      child: child,
    );
  }
}
