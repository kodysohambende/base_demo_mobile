  import 'package:base_demo_ob/ui/utils/app_constants/app_constants.dart';
import 'package:base_demo_ob/ui/utils/app_enum.dart';
import 'package:flutter/foundation.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_riverpod/flutter_riverpod.dart';
  import 'package:injectable/injectable.dart';
  import 'package:base_demo_ob/framework/utils/session.dart';
  import 'package:base_demo_ob/ui/routing/navigation_stack_item.dart';
  import 'package:base_demo_ob/ui/routing/navigation_stack_keys.dart';
  import 'package:base_demo_ob/ui/routing/route_manager.dart';
  import 'package:base_demo_ob/ui/routing/stack.dart';

  @injectable
  class MainRouterInformationParser extends RouteInformationParser<NavigationStack> {
    WidgetRef ref;
    BuildContext context;

    MainRouterInformationParser(@factoryParam this.ref, @factoryParam this.context);

    ///Parse Screen from URL
    @override
    Future<NavigationStack> parseRouteInformation(RouteInformation routeInformation) async {
      List<String> queryParam = [];
      List<String> tempUrlList = routeInformation.uri.toString().split('/');
      tempUrlList.removeAt(0);
      List<String> tempPathList = [];
      for (var element in tempUrlList) {
        tempPathList.add(element.split('?').first);
        if (element.split('?').length > 1) {
          queryParam.add(element.split('?').last);
        }
      }
      String mainUrl = '/${tempPathList.join('/')}${queryParam.isNotEmpty ? '?${queryParam.join('&')}' : ''}';
      showLog('........URL......$mainUrl');
      final Uri uri = Uri.parse(mainUrl);
      final queryParams = uri.queryParameters;
      showLog('........queryParams....$queryParams');

      NavigationStackKeyMapper.mapper.keysList = uri.pathSegments;
      final items = <NavigationStackItem>[];
      showLog('Path Segments-> ${uri.pathSegments}');

      ///Will remove all the empty path from segments
      RouteManager.route.removeEmptyPath(uri.pathSegments);

      ///To add error page at the end and return no widget if error is found
      bool hasError = false;

      ///To add error page at the end and return no widget if error is found
      bool isAuthenticated = true;

      ///Will check validation for routes
      await RouteManager.route.checkPathValidation().then(
        (value) async {
          print('checking path validation (user access token) ${Session.userAccessToken}');
          if (Session.userAccessToken != '') {
            /// Side bar List Api
            // ref.watch(drawerController).disposeController();
            /*ref.read(drawerController).sideBarListApi(ref).then(
                  (value) async {
                /// Store List Api
                ref.read(homeController).storesListApi(context, false);
                // /// Profile Api
                // final profileWatch = ref.watch(profileController);
                // if (context.mounted) {
                //   profileWatch.profileApi(context);
                //   profileWatch.buyerProfileApi(context);
                // }
              },
            );*/
          } else {
            AppConstants.constant.globalRef?.read(navigationStackController).pushAndRemoveAll(const NavigationStackItem.error(errorType: ErrorType.error403));
          }
          showLog("${uri.pathSegments}");
          for (var i = 0; i < uri.pathSegments.length; i = i + 1) {
            ///To add error page at the end and return no widget if error is found

            hasError = !value.isRouteValid;
            isAuthenticated = value.isAuthenticated;
            if (kDebugMode) {
              showLog("$hasError");
            }
            if (kDebugMode) {
              showLog("$isAuthenticated");
            }
            final key = uri.pathSegments[i];
            NavigationStackKeyMapper.mapper.currentKey = key;
            switch (key) {
              /// Splash
              case Keys.splash:
                items.add(const NavigationStackItem.splash());
                break;

              case Keys.home:
                items.add(const NavigationStackItem.home());
                break;


              default:
                items.add(
                  NavigationStackItem.error(
                    key: key,
                    errorType: hasError ? ErrorType.error404 : (!isAuthenticated ? ErrorType.error403 : ErrorType.error404),
                  ),
                );
            } // for
          }
        },
      );

      ///If have error then add 404 without passing any key so the path will not be shown in url
      if (hasError) {
        items.add(const NavigationStackItem.error(errorType: ErrorType.error404));
      } else if (!(isAuthenticated)) {
        items.add(const NavigationStackItem.error(errorType: ErrorType.error403));
      }

      if (items.isEmpty) {
        const fallback = NavigationStackItem.splash();
        if (items.isNotEmpty && items.first is NavigationStackItemSplashPage) {
          items[0] = fallback;
        } else {
          items.insert(0, fallback);
        }
      }
      return NavigationStack(items);
    }

    ///THIS IS IMPORTANT: Here we restore the web history
    @override
    RouteInformation? restoreRouteInformation(NavigationStack configuration) {

      showLog('In restore Routing');
      final location = configuration.items.fold<String>(
        '',
        (previousValue, element) {
          return previousValue +
              element.when(
                /// Splash
                splash: () => '/${Keys.splash}',

                error: (key, errorType) => '/${Keys.error}',
                  home: () => '/${Keys.home}'
              );
        },
      );
      List<String> queryParam = [];
      List<String> tempUrlList = location.toString().split('/');
      tempUrlList.removeAt(0);
      List<String> tempPathList = [];
      for (var element in tempUrlList) {
        tempPathList.add(element.split('?').first);
        if (element.split('?').length > 1) {
          queryParam.add(element.split('?').last);
        }
      }
      NavigationStackKeyMapper.mapper.keysList = tempPathList;
      NavigationStackKeyMapper.mapper.currentKey = tempPathList.last;
      String mainUrl = '/${tempPathList.join('/')}${queryParam.isNotEmpty ? '?${queryParam.join('&')}' : ''}';
      Uri routeUrl = Uri.parse(mainUrl);

      NavigationStackKeyMapper.mapper.currentKey = tempPathList.toString().replaceAll('[', '').replaceAll(']', '').split(',').last.trim();
      return RouteInformation(uri: routeUrl);
    }
  }
