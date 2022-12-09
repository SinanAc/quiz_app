import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/configs/themes/dark_theme.dart';
import 'package:quiz_app/configs/themes/light_theme.dart';

class ThemeController extends GetxController {
  late ThemeData _lightTheme;
  late ThemeData _darkTheme;
  ThemeData get darkTheme => _darkTheme;
  ThemeData get lightTheme => _lightTheme;
  @override
  void onInit() {
    initializeThemeData();
    super.onInit();
  }

  void initializeThemeData() {
    _lightTheme = LightTheme().buildLightTheme();
    _darkTheme = DarkTheme().buildDarkTheme();
  }
}
