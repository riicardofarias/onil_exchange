import 'package:flutter/material.dart';

const _defaultFontFamily = 'Poppins';
const _primaryColor = Color.fromRGBO(247, 179, 24, 1);
const _primaryTextColor = Color.fromRGBO(26, 26, 26, 1);
const _buttonBorderRadius = 12.0;

final appTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: _defaultFontFamily,
  scaffoldBackgroundColor: Color.fromRGBO(26, 26, 26, 1),
  colorScheme: ColorScheme.dark(
    primary: _primaryColor,
    secondary: Colors.green,
  ),
  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(
      foregroundColor: _primaryTextColor,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: _primaryColor,
      foregroundColor: _primaryTextColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_buttonBorderRadius),
      ),
    )
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: BorderSide(color: _primaryColor, width: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_buttonBorderRadius),
      ),
    )
  ),
);