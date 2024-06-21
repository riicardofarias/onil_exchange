import 'package:flutter/material.dart';
import 'package:get/get.dart';

const _defaultFontFamily = 'Poppins';
const _primaryColor = Color.fromRGBO(247, 179, 24, 1);
const _primaryTextColor = Color.fromRGBO(26, 26, 26, 1);
const _buttonBorderRadius = 12.0;

// Input
const _inputBackgroundColor = Color.fromRGBO(34, 35, 38, 1);
const _inputBorderColor = Color.fromRGBO(34, 35, 38, 1);
const _inputTextColor = Color.fromRGBO(147, 147, 151, 1);

// Text
const _textColor = Color.fromRGBO(185, 186, 189, 1);

// AppBar
const _appBarTextColor = Color.fromRGBO(255, 255, 255, 1);
const _appBarIconColor = Color.fromRGBO(255, 255, 255, 1);

final appThemeDark = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  fontFamily: _defaultFontFamily,
  scaffoldBackgroundColor: Color.fromRGBO(26, 26, 26, 1),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    iconTheme: IconThemeData(
      color: _appBarIconColor,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontFamily: _defaultFontFamily,
      color: _appBarTextColor,
    ),
  ),
  colorScheme: ColorScheme.dark(
    primary: _primaryColor,
    secondary: Colors.green,
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: _textColor),
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
  inputDecorationTheme: InputDecorationTheme(
    fillColor: _inputBackgroundColor,
    filled: true,
    contentPadding: const EdgeInsets.symmetric(
      vertical: 12, horizontal: 16
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: _inputBorderColor),
      borderRadius: BorderRadius.circular(_buttonBorderRadius)
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: _primaryColor),
      borderRadius: BorderRadius.circular(_buttonBorderRadius)
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(_buttonBorderRadius)
    ),
    labelStyle: TextStyle(
      color: _inputTextColor,
    ),
    hintStyle: TextStyle(
      color: _inputTextColor,
      fontWeight: FontWeight.w400
    ),
    suffixIconColor: _inputTextColor,
  ),
);