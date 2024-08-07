import 'package:json_annotation/json_annotation.dart';

part 'authorization.g.dart';

@JsonSerializable(createToJson: false)
class Authorization {
  final String token;
  final String type;
  final int exp;

  Authorization(
    this.token,
    this.type,
    this.exp,
  );

  factory Authorization.fromJson(Map<String, dynamic> json) => _$AuthorizationFromJson(json);
}