import 'package:flutter/material.dart';
import 'package:quiz_app/configs/themes/sub_theme_data_mixin.dart';

class LightTheme with SubThemeData {
  // -->> light colors
  static const Color primaryLightColor = Color(0xFF3ac3cb);
  static const Color primaryColorLight = Color(0xFFf85187);
  static const Color mainTextColorLight = Color.fromARGB(255, 40, 40, 40);

  ThemeData buildLightTheme() {
    final ThemeData systemLightTheme = ThemeData.light();
    return systemLightTheme.copyWith(
      iconTheme: getIconTheme(),
      textTheme: getTextThemes().apply(
        bodyColor: mainTextColorLight,
        displayColor: mainTextColorLight,
      ),
    );
  }
}
