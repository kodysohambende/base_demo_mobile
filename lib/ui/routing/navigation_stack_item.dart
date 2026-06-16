import 'package:base_demo_ob/ui/utils/app_enum.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_stack_item.freezed.dart';

@freezed
abstract class NavigationStackItem with _$NavigationStackItem {

  /// Splash
  const factory NavigationStackItem.splash() =
  NavigationStackItemSplashPage;

  /// Error
  const factory NavigationStackItem.error({
    String? key,
    ErrorType? errorType,
  }) = NavigationStackItemError;

  const factory NavigationStackItem.home() =
  NavigationStackItemHomePage;
}