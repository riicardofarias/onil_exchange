// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) => AuthResponse(
      User.fromJson(json['user'] as Map<String, dynamic>),
      Authorization.fromJson(json['authorization'] as Map<String, dynamic>),
    );
