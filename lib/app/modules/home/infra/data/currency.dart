import 'package:json_annotation/json_annotation.dart';

part 'currency.g.dart';

@JsonSerializable(createToJson: false)
class Currency {
  final int id;
  final String name;
  final String code;
  final String color;
  final int decimal;
  final String type;
  final double actualRate;
  final bool status;

  @JsonKey(defaultValue: '')
  final String thousandsSeparator;

  @JsonKey(defaultValue: '')
  final String decimalSeparator;

  Currency({
    required this.id,
    required this.name,
    required this.code,
    required this.color,
    required this.decimal,
    required this.type,
    required this.actualRate,
    required this.status,
    required this.thousandsSeparator,
    required this.decimalSeparator,
  });

  factory Currency.fromJson(Map<String, dynamic> json) => _$CurrencyFromJson(json);
}