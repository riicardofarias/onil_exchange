import 'package:onil/app/modules/authentication/infra/data/auth_response.dart';

abstract class IAuthenticationRepository {
  Future<AuthResponse> signInWithEmailAndPassword(String email, String password);
  Future<AuthResponse> refreshToken();
}