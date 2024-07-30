// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserWallet _$UserWalletFromJson(Map<String, dynamic> json) => UserWallet(
      balance: (json['balance'] as num).toDouble(),
      currency: Currency.fromJson(json['currency'] as Map<String, dynamic>),
    );
