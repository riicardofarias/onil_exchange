import 'package:json_annotation/json_annotation.dart';

part 'quotation.g.dart';

@JsonSerializable(createToJson: false)
class Quotation {
  final String coin;
  final String amount;

  Quotation({
    required this.coin,
    required this.amount,
  });

  factory Quotation.fromJson(Map<String, dynamic> json) => _$QuotationFromJson(json);
}