import 'package:dio/dio.dart';

class NetworkExceptions implements Exception {
  final String message;
  final int? statusCode;
  final Response? response;

  const NetworkExceptions(this.message, {this.statusCode, this.response});

  static NetworkExceptions getDioException(dynamic error) {
    if (error is DioException) {
      if (error.type == DioExceptionType.cancel && error.error == "No Internet Connection") {
        return NetworkExceptions("No Internet Connection");
      }

      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return const NetworkExceptions('Connection timeout');
        case DioExceptionType.sendTimeout:
          return const NetworkExceptions('Send timeout');
        case DioExceptionType.receiveTimeout:
          return const NetworkExceptions('Receive timeout');
        case DioExceptionType.badCertificate:
          return const NetworkExceptions('Bad certificate');
        case DioExceptionType.cancel:
          return const NetworkExceptions('Request cancelled');
        case DioExceptionType.connectionError:
          return const NetworkExceptions('Connection error');
        case DioExceptionType.badResponse:
          return NetworkExceptions(
            error.response?.data is Map
                ? ('${error.response?.data['message']?.toString()} In message')
                : ('${error.response?.statusMessage} in status message'),
            statusCode: error.response?.statusCode,
            response: error.response,
          );
        case DioExceptionType.unknown:
          return NetworkExceptions('${error.message} in unknown');
      }
    }
    return NetworkExceptions('${error.toString()} in direct return');
  }

  static String getErrorMessage(NetworkExceptions error) => error.message;
}