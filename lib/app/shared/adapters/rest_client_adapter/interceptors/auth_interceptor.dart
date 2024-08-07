import 'package:dio/dio.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:onil/app/modules/authentication/domain/usecase/auth_refresh_token.dart';
import 'package:onil/app/shared/adapters/logger_adapter/logger.dart';
import 'package:onil/app/shared/adapters/storage_adapter/storage_adapter.dart';

class AuthInterceptor extends Interceptor {
  final IStorageAdapter _storage;
  late final AuthRefreshTokenUseCase _authenticationUseCase;

  AuthInterceptor(
    this._storage,
  ) {
    _authenticationUseCase = AuthRefreshTokenUseCase(_storage);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if(_storage.isAuthenticated) {
      options.headers['Authorization'] = "Bearer ${_storage.accessToken}";
    }

    return super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      try {
        if (!_storage.hasData(StorageKeys.accessToken)){
          return handler.next(err);
        }

        final token = await _authenticationUseCase.execute();

        final options = err.requestOptions.copyWith();
        options.headers['Authorization'] = "Bearer $token";

        final retry = await Dio().fetch(options);
        return handler.resolve(retry);
      } catch(err, stack) {
        logger.error("Erro ao tentar atualizar o token", error: err, stackTrace: stack);
      }
    }

    return handler.next(err);
  }
}