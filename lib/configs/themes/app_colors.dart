import 'package:flutter/material.dart';
import 'package:quiz_app/configs/themes/dark_theme.dart';
import 'package:quiz_app/configs/themes/light_theme.dart';
import 'package:quiz_app/configs/themes/ui_parameters.dart';

class AppColors {
  // -->> light gradient
  static const mainGradientLight = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      LightTheme.primaryLightColor,
      LightTheme.primaryColorLight,
    ],
  );

  // -->> dark gradient
  static const mainGradientDark = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      DarkTheme.primaryDarkColor,
      DarkTheme.primaryColorDark,
    ],
  );
  // ==>>  TO FETCH MAIN GRADIENT
  static LinearGradient mainGradient(BuildContext ctx) {
    return UiParameters.isDarkMode(ctx) ? mainGradientDark : mainGradientLight;
  }

  //-->> APP COLORS
  static const Color onSurfaceTextColor = Colors.white; 
}
