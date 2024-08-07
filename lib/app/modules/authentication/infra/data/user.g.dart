// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      (json['id'] as num).toInt(),
      (json['sponsor_id'] as num).toInt(),
      json['fullname'] as String,
      json['firstname'] as String,
      json['lastname'] as String,
      json['document_type'] as String,
      json['document_code'] as String,
      json['email'] as String,
      (json['email_verification'] as num).toInt(),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'sponsor_id': instance.sponsorId,
      'fullname': instance.fullname,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'document_type': instance.documentType,
      'document_code': instance.documentCode,
      'email': instance.email,
      'email_verification': instance.emailVerification,
    };
