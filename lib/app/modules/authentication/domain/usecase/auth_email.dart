import 'package:onil/app/modules/authentication/domain/repository/authentication_repository.dart';
import 'package:onil/app/shared/adapters/logger_adapter/logger.dart';
import 'package:onil/app/shared/adapters/storage_adapter/storage_adapter.dart';

class AuthEmailUseCase {
  final IStorageAdapter _storage;
  final IAuthenticationRepository _authenticationRepository;

  AuthEmailUseCase(this._storage, this._authenticationRepository);

  Future<void> execute(String email, String password) async {
    try {
      final tokenInfo = await _authenticationRepository.signInWithEmailAndPassword(email, password);

      _storage.setUser(tokenInfo.user);
      _storage.setAccessToken(tokenInfo.authorization.token);
      _storage.setExpiresAt(tokenInfo.authorization.exp);
    } catch(err, stack) {
      logger.error("Erro ao tentar realizar o login", error: err, stackTrace: stack);
      rethrow;
    }
  }
}