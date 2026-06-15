import 'package:base_demo_ob/ui/utils/app_constants/app_constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioClient {
  Dio dio;

  DioClient(this.dio);

  Map<String, dynamic> getHeaders({bool isTokenRequiredInHeader = true}) {
    final headers = {
      AppConstants.accept: AppConstants.headerAccept,
      AppConstants.contentType: AppConstants.headerContentType,
    };

    if (isTokenRequiredInHeader && AppConstants.headerAuthToken.isNotEmpty) {
      headers.addAll({AppConstants.xAuthToken: AppConstants.headerAuthToken});  // Assign token to headerAuthToken
    }
    return headers;
  }

  Future<Response> getResult(
      String endPoint, {
        Map<String, dynamic>? queryParams,
        bool isTokenRequiredInHeader = true,
      }) async {
    try {
      dio.options.headers = getHeaders(
        isTokenRequiredInHeader: isTokenRequiredInHeader,
      );

      return await dio.get(endPoint, queryParameters: queryParams);
    } catch (e) {
      debugPrint("GET ERROR: $e");
      rethrow;
    }
  }

  Future<Response> postResult(
      String endPoint,
      Map<String, dynamic> body, {
        bool isTokenRequiredInHeader = true,
        Map<String, dynamic>? queryParameters
      }) async {
    try {
      dio.options.headers = getHeaders(
        isTokenRequiredInHeader: isTokenRequiredInHeader,
      );
      return await dio.post(endPoint, data: body, queryParameters: queryParameters);
    } catch (e) {
      debugPrint("POST ERROR: $e");
      rethrow;
    }
  }

  Future<Response> putResult(
      String endPoint,
      dynamic body, {
        bool isTokenRequiredInHeader = true,
        Map<String, dynamic>? queryParameters
      }) async {
    try {
      dio.options.headers = getHeaders(
        isTokenRequiredInHeader: isTokenRequiredInHeader,
      );

      return await dio.put(endPoint, data: body,queryParameters: queryParameters);
    } catch (e) {
      debugPrint("PUT ERROR: $e");
      rethrow;
    }
  }

  Future<Response> patchResult(
      String endPoint,
      dynamic body, {
        bool isTokenRequiredInHeader = true,
        Map<String, dynamic>? queryParameters
      }) async {
    try {
      dio.options.headers = getHeaders(
        isTokenRequiredInHeader: isTokenRequiredInHeader,
      );

      return await dio.patch(endPoint, data: body, queryParameters: queryParameters);
    } catch (e) {
      debugPrint("PATCH ERROR: $e");
      rethrow;
    }
  }

  Future<Response> deleteResult(
      String endPoint, {
        dynamic body,
        bool isTokenRequiredInHeader = true, Map<String, dynamic>? queryParameters
      }) async {
    try {
      dio.options.headers = getHeaders(
        isTokenRequiredInHeader: isTokenRequiredInHeader,
      );

      return await dio.delete(endPoint, data: body, queryParameters: queryParameters);
    } catch (e) {
      debugPrint("DELETE ERROR: $e");
      rethrow;
    }
  }
}
