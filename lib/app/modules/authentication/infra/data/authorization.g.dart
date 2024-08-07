// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Authorization _$AuthorizationFromJson(Map<String, dynamic> json) =>
    Authorization(
      json['token'] as String,
      json['type'] as String,
      (json['exp'] as num).toInt(),
    );
