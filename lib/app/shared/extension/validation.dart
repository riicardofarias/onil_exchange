import 'package:get/get_utils/src/get_utils/get_utils.dart';

extension Validation on String? {
  bool get isCep => RegExp("\\d{5}\\-\\d{3}").hasMatch(this ?? '');

  bool get isNum => GetUtils.isNum(this ?? '');

  bool get isEmpty => (this ?? '').isEmpty;

  bool get isCurrency => (this ?? '').isCurrency;
}