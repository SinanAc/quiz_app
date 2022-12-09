import 'package:flutter/material.dart';
import 'package:quiz_app/configs/themes/sub_theme_data_mixin.dart';

class DarkTheme with SubThemeData {
  // -->> dark colors
  static const Color primaryDarkColor = Color(0xFF2e3c62);
  static const Color primaryColorDark = Color(0xFF99ace1);
  static const Color mainTextColorDark = Colors.white;

  ThemeData buildDarkTheme() {
    final ThemeData systemDarkTheme = ThemeData.dark();
    return systemDarkTheme.copyWith(
      iconTheme: getIconTheme(),
      textTheme: getTextThemes().apply(
        bodyColor: mainTextColorDark,
        displayColor: mainTextColorDark,
      ),
    );
  }
}
