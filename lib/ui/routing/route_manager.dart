import 'package:flutter/foundation.dart';
import 'package:base_demo_ob/framework/utils/session.dart';
import 'package:base_demo_ob/ui/routing/navigation_stack_keys.dart';

class RouteManager {
  RouteManager._();

  static RouteManager route = RouteManager._();

  List<String> pathSegments = [];

  void removeEmptyPath(List<String> segments) {
    pathSegments = segments.toList();
    pathSegments.removeWhere((element) => element.trim().isEmpty);
  }

  Future<RouteValidator> checkPathValidation() async {
    /// Mobile always valid
    if (!kIsWeb) {
      return RouteValidator(
        isAuthenticated: true,
        isRouteValid: true,
      );
    }

    /// Empty route valid
    if (pathSegments.isEmpty) {
      return RouteValidator(
        isAuthenticated: true,
        isRouteValid: true,
      );
    }

    final String path = pathSegments.join('/');

    final bool isAuthenticated =
        Session.userAccessToken.isNotEmpty;

    switch (pathSegments.last) {
    /// Splash
      case Keys.splash:
        return RouteValidator(
          isAuthenticated: true,
          isRouteValid: path == Keys.splash,
        );

      case Keys.home:
        return RouteValidator(
          isAuthenticated: true,
          isRouteValid: path == Keys.home,
        );


      default:
        return RouteValidator(
          isAuthenticated: isAuthenticated,
          isRouteValid: false,
        );
    }
  }
}

class RouteValidator {
  bool isRouteValid;
  bool isAuthenticated;

  RouteValidator({
    this.isRouteValid = false,
    this.isAuthenticated = false,
  });
}