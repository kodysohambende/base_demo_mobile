import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:base_demo_ob/framework/provider/api_end_points.dart';
import 'package:base_demo_ob/framework/provider/network/dio_client.dart';
import 'package:base_demo_ob/framework/provider/network/network_interceptor.dart';

@module
abstract class DioApiClient {

  @lazySingleton
  DioClient getDevelopmentDioClient(){
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: ApiEndPoints.baseUrl,
        sendTimeout: Duration(milliseconds: 500000),
        connectTimeout: Duration(milliseconds: 300000),
        receiveTimeout: Duration(milliseconds: 500000),
      )
    );
    dio.interceptors.add(networkInterceptor(dio));
    return DioClient(dio);
  }
}