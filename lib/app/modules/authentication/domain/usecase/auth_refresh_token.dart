import 'package:dio/dio.dart';
import 'package:onil/app/app_config.dart';
import 'package:onil/app/modules/authentication/domain/repository/authentication_repository.dart';
import 'package:onil/app/modules/authentication/infra/data/auth_response.dart';
import 'package:onil/app/shared/adapters/logger_adapter/logger.dart';
import 'package:onil/app/shared/adapters/storage_adapter/storage_adapter.dart';

class AuthRefreshTokenUseCase {
  final IStorageAdapter _storage;

  AuthRefreshTokenUseCase(this._storage);

  Future<String> execute() async {
    try {
      final options = BaseOptions(baseUrl: AppConfig.baseUrl,);

      final tokenInfo = await Dio(options).post('/refresh-token').then((response) =>
        AuthResponse.fromJson(response.data)
      );

      _storage.setUser(tokenInfo.user);
      _storage.setAccessToken(tokenInfo.authorization.token);
      _storage.setExpiresAt(tokenInfo.authorization.exp);

      return tokenInfo.authorization.token;
    } catch(err, stack) {
      logger.error("Erro ao tentar atualizar o token", error: err, stackTrace: stack);
      rethrow;
    }
  }
}