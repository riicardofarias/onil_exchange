import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:onil/app/shared/adapters/logger_adapter/logger_adapter.dart';

class LoggerInterceptor extends Interceptor {
  final bool requestHeader;
  final ILoggerAdapter logger;

  LoggerInterceptor(this.logger, {
    this.requestHeader = true
  });

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    var buffer = StringBuffer();
    buffer.writeln('Request | ${options.method}\n${options.baseUrl}${options.path}');
    buffer.writeln('Query params | ${options.queryParameters}');

    if(requestHeader) {
      buffer.writeln();
      buffer.writeln('Headers:\n${options.headers.entries.map((e) => "${e.key}: ${e.value}").join("\n")}');
    }

    if(['PUT', 'POST'].contains(options.method)) {
      buffer.writeln();
      buffer.writeln('Body:');

      if(options.data is FormData) {
        buffer.writeln((options.data as FormData).fields);
      } else {
        buffer.writeln(options.data);
      }

      buffer.writeln();
    }

    logger.info(buffer);

    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    var options = err.requestOptions;
    var buffer = StringBuffer();
    buffer.writeln('Request | ${options.method}\n${options.baseUrl}${options.path}\n');

    if(err.response != null) {
      buffer.writeln('Response:\n${err.response?.data}\n');
    }

    logger.error(buffer.toString(), error: err.error, stackTrace: err.stackTrace);

    return handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    var buffer = StringBuffer();
    buffer.writeln("Response | ${response.requestOptions.method}\n${response.requestOptions.baseUrl}${response.requestOptions.path}");

    if(response.data != null) {
      buffer.writeln(json.encode(response.data));
    }

    logger.info(buffer);

    return handler.next(response);
  }
}