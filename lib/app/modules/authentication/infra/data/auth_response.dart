import 'package:json_annotation/json_annotation.dart';
import 'package:onil/app/modules/authentication/infra/data/authorization.dart';
import 'package:onil/app/modules/authentication/infra/data/user.dart';

part 'auth_response.g.dart';

@JsonSerializable(createToJson: false)
class AuthResponse {
  final User user;
  final Authorization authorization;

  AuthResponse(
    this.user,
    this.authorization,
  );

  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);
}