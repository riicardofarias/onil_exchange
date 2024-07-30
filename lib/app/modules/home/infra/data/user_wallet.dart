import 'package:json_annotation/json_annotation.dart';
import 'package:money_formatter/money_formatter.dart';

import 'currency.dart';

part 'user_wallet.g.dart';

@JsonSerializable(createToJson: false)
class UserWallet {
  final double balance;
  final Currency currency;

  UserWallet({
    required this.balance,
    required this.currency,
  });

  factory UserWallet.fromJson(Map<String, dynamic> json) => _$UserWalletFromJson(json);

  MoneyFormatter get moneyFormatter => MoneyFormatter(
    amount: balance,
    settings: MoneyFormatterSettings(
      symbol: currency.code,
      thousandSeparator: currency.thousandsSeparator,
      decimalSeparator: currency.decimalSeparator,
      symbolAndNumberSeparator: ' ',
      fractionDigits: currency.decimal,
    ),
  );

  String get amountNonSymbol => moneyFormatter.output.nonSymbol;
}