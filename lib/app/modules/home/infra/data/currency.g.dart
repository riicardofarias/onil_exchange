// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Currency _$CurrencyFromJson(Map<String, dynamic> json) => Currency(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
      color: json['color'] as String,
      decimal: (json['decimal'] as num).toInt(),
      type: json['type'] as String,
      actualRate: (json['actual_rate'] as num).toDouble(),
      status: json['status'] as bool,
      thousandsSeparator: json['thousands_separator'] as String? ?? '',
      decimalSeparator: json['decimal_separator'] as String? ?? '',
    );
