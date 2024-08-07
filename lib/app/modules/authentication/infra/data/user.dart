import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final int id;
  final int sponsorId;
  final String fullname;
  final String firstname;
  final String lastname;
  final String documentType;
  final String documentCode;
  final String email;
  final int emailVerification;

  User(
    this.id,
    this.sponsorId,
    this.fullname,
    this.firstname,
    this.lastname,
    this.documentType,
    this.documentCode,
    this.email,
    this.emailVerification
  );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}