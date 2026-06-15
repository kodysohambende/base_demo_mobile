import 'package:base_demo_ob/ui/utils/app_constants/app_constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:base_demo_ob/framework/provider/api_end_points.dart';
import 'package:base_demo_ob/framework/provider/network/network_helper.dart';
import 'package:base_demo_ob/framework/provider/network_exceptions.dart';
import 'package:base_demo_ob/framework/utils/session.dart';
import 'package:base_demo_ob/ui/utils/widgets/common_alert.dart';

InterceptorsWrapper networkInterceptor(Dio dio) {
  return InterceptorsWrapper(
    onRequest: (request, handler) async {
      showLog('request => ${request.method} ${request.uri}');

      bool isConnected = await NetworkHelper.hasInternet();

      if (!isConnected) {
        if (globalNavigatorKey.currentState != null) {
          showDialog(
            context: globalNavigatorKey.currentState!.context,
            builder: (context) => CommonAlert(
              title:
              "No Internet Connection. Try again after connecting with internet",
            ),
          );
        }

        return handler.reject(
          DioException(
            requestOptions: request,
            error: "No Internet Connection",
            type: DioExceptionType.connectionError,
          ),
        );
      }

      // Fix: check request.path instead of uri.toString()
      List<String> whiteListApi = [ApiEndPoints.login];
      if (!whiteListApi.contains(request.path)) {
        if (Session.userAccessToken.isNotEmpty) {
          request.headers["X-Auth-Token"] = Session.userAccessToken;
        } else {
          return handler.reject(
            DioException(
              requestOptions: request,
              type: DioExceptionType.cancel,
              message: "Session expired or Token missing",
            ),
          );
        }
      }

      request.baseUrl = ApiEndPoints.baseUrl;
      return handler.next(request);
    },

    onResponse: (response, handler) {
      showLog(
        'response => ${response.statusCode} ${response.realUri.path} ${response.data}',
      );
      handler.next(response);
    },

    onError: (error, handler) {
      final statusCode = error.response?.statusCode;
      var errorMessage = NetworkExceptions.getDioException(error);
      showLog('error[$statusCode] => ${error.requestOptions.uri}');

      if (statusCode == 401) {
        if (globalNavigatorKey.currentState != null) {
          showDialog(
            context: globalNavigatorKey.currentState!.context,
            builder: (context) => CommonAlert(title: "UnAuthorized"),
          );
        }
        Session.userAccessToken = '' ;

        // Set to login
        AppConstants.globalRef?.read(navigationStackController).pushAndRemoveAll(const NavigationStackItem.splash());

      } else if (statusCode == 400 || statusCode == 404) {
        if (globalNavigatorKey.currentState != null) {
          showDialog(
            context: globalNavigatorKey.currentState!.context,
            builder: (context) => CommonAlert(title: errorMessage.message),
          );
        }
      } else if (statusCode != null && statusCode >= 500) {
        if (globalNavigatorKey.currentState != null) {
          showDialog(
            context: globalNavigatorKey.currentState!.context,
            builder: (context) => CommonAlert(title: "Server Error"),
          );
        }
      } else if (error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.receiveTimeout) {
        if (globalNavigatorKey.currentState != null) {
          showDialog(
            context: globalNavigatorKey.currentState!.context,
            builder: (context) =>
                CommonAlert(title: "Request timeout. Check your internet."),
          );
        }
      } else if (error.type == DioExceptionType.unknown) {
        if (globalNavigatorKey.currentState != null) {
          showDialog(
            context: globalNavigatorKey.currentState!.context,
            builder: (context) => CommonAlert(title: "Something went wrong"),
          );
        }
      }

      handler.next(error);
    },
  );
}