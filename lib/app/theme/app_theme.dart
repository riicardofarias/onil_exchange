import 'package:flutter/material.dart';
import 'package:onil/app/theme/app_color.dart';

const _defaultFontFamily = 'Poppins';
const _primaryColor = Color.fromRGBO(247, 179, 24, 1);
const _primaryTextColor = Color.fromRGBO(26, 26, 26, 1);
const _buttonBorderRadius = 12.0;

// Input
const _inputBorderColor = Color.fromRGBO(34, 35, 38, 1);

// AppBar
const _appBarTextColor = Color.fromRGBO(255, 255, 255, 1);
const _appBarIconColor = Color.fromRGBO(255, 255, 255, 1);

const _cardColor = Color.fromRGBO(33, 33, 33, 1);
const _bottomNavigationBarColor = Color.fromRGBO(36, 38, 46, 1);
const _dividerColor = Color.fromRGBO(33, 33, 33, 1);

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
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(fontSize: 14, color: AppColor.textNeutral5),
    bodySmall: TextStyle(fontSize: 12, color: AppColor.textNeutral3),
    bodyLarge: TextStyle(fontSize: 18, color: AppColor.textNeutral5),
  ),
  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(
      foregroundColor: AppColor.textNeutral5,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: _primaryColor,
    foregroundColor: AppColor.textNeutral5,
    iconSize: 36,
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
    fillColor: AppColor.inputBackgroundColor,
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
      color: AppColor.textNeutral4,
      fontWeight: FontWeight.w500
    ),
    hintStyle: TextStyle(
      color: AppColor.textNeutral2,
      fontWeight: FontWeight.w400
    ),
    suffixIconColor: AppColor.inputTextColor,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: _bottomNavigationBarColor,
    selectedItemColor: _primaryColor,
    unselectedItemColor: AppColor.textNeutral4,
  ),
);