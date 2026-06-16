import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  void get hideKeyboard => FocusScope.of(this).unfocus();

  void get nextField => FocusScope.of(this).nextFocus();

  double get height => MediaQuery.sizeOf(this).height;

  double get width => MediaQuery.sizeOf(this).width;

  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(content: Text(message)));
  }

  /// Full width SizedBox
  SizedBox  widthBox(double size) => SizedBox(width: (width * size));

  /// Full height SizedBox
  SizedBox  heightBox(double size) => SizedBox(height: (height * size));
}