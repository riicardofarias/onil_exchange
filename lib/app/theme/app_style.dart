import 'package:flutter/painting.dart';
import 'package:onil/app/theme/app_color.dart';

class AppStyle {
  static TextStyle get labelStyle => TextStyle(
    color: AppColor.textNeutral4, fontWeight: FontWeight.w500
  );

  static TextStyle get buttonLargeTextStyle => TextStyle(
    fontSize: 18
  );
}