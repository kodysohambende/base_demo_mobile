import 'package:base_demo_ob/ui/utils/theme/app_colors.dart';
import 'package:base_demo_ob/ui/utils/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonTextFormField extends StatelessWidget {

  final TextEditingController? controller;
  final String? initialValue;
  final double? fontSize;
  final double? height;
  final double? width;
  final FocusNode? focusNode;
  final InputDecoration? decoration = const InputDecoration();
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final bool? showCursor;
  final double cursorWidth = 2.0;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? focusedBorderColor;
  final Color? enabledBorderColor;
  final Color? cursorColor;
  final Color? cursorErrorColor;
  final String? hintText;
  final String? labelText;
  final bool? readOnly;
  final bool? obscureText;
  final InputBorder? border;
  final void Function()? onTap;
  final void Function(PointerDownEvent)? onTapOutside;
  final void Function(PointerUpEvent)? onTapUpOutside;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final AutovalidateMode? autovalidateMode;
  final Widget? suffixIcon;

  const CommonTextFormField({super.key, this.controller, this.initialValue, this.focusNode, this.keyboardType, this.textInputAction, this.style, this.cursorHeight, this.cursorRadius, this.cursorColor, this.cursorErrorColor, this.onTap, this.onTapOutside, this.onTapUpOutside, this.onEditingComplete, this.onFieldSubmitted, this.onSaved, this.validator, this.onChanged, this.border, this.focusedBorderColor, this.showCursor, this.fontSize, this.readOnly, this.inputFormatters, this.height, this.width, this.labelText, this.enabledBorderColor, this.obscureText, this.autovalidateMode, this.suffixIcon, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyles.bold.copyWith(
        fontSize: fontSize
      ),
      controller: controller,
      validator: validator,
      autovalidateMode: autovalidateMode,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        labelText: labelText ?? '',
        hintText: hintText ?? '',
        labelStyle: TextStyles.regular.copyWith(
          fontSize: 14,
          color: AppColors.clrGrey
        ),
        focusColor: AppColors.clrBlue42A5F5,
        border: border ?? OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color:  enabledBorderColor ?? AppColors.clrBlack000000,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: border ?? OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color:  enabledBorderColor ?? AppColors.clrBlack000000,
            ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: border ?? OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color:  focusedBorderColor ?? AppColors.clrBlack000000,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: suffixIcon,
      ),
      initialValue: initialValue,
      readOnly: readOnly ?? false,
      showCursor: showCursor,
      obscureText: obscureText ?? false,
      cursorColor: AppColors.clrBlack000000,
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
    );
  }
}
