import 'package:onil/app/modules/authentication/domain/repository/authentication_repository.dart';
import 'package:onil/app/modules/authentication/infra/data/auth_response.dart';
import 'package:onil/app/shared/adapters/rest_client_adapter/rest_client_adapter.dart';

class AuthenticationRepository implements IAuthenticationRepository {
  final RestClientAdapter _api;

  AuthenticationRepository(
    this._api
  );

  @override
  Future<AuthResponse> signInWithEmailAndPassword(String email, String password) {
    final data = {
      'email': email,
      'password': password
    };

    return _api.post('/login', data: data).then((response) =>
      AuthResponse.fromJson(response.data)
    );
  }

  @override
  Future<AuthResponse> refreshToken() {
    return _api.post('/refresh-token').then((response) =>
      AuthResponse.fromJson(response.data)
    );
  }
}