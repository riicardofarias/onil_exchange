import 'dart:io';

import 'package:dio/dio.dart';
import 'package:onil/app/shared/adapters/toast_adapter/toast_adapter.dart';

class ErrorInterceptor extends Interceptor {

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if(err.type == DioExceptionType.badResponse) {
      if (err.response?.statusCode == HttpStatus.unauthorized) {
        return handler.next(err);
      }

      final message = _decodeResponseError(err);
      Toasts.showError(message);
    } else if(err.type == DioExceptionType.connectionError) {
      Toasts.showError("Verifique a sua conexão com a internet");
    } else {
      Toasts.showError("Não foi possível realizar a operação");
    }

    return handler.next(err);
  }

  String _decodeResponseError(DioException err) {
    try {
      return err.response?.data['message'];
    } catch(e) {
      return 'Não foi possível realizar a operação';
    }
  }
}