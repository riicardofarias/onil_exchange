import 'package:dio/dio.dart';

class AppException extends DioError {
  AppException(String message) : super(
      requestOptions: RequestOptions(path: ''),
      error: message
  );
}