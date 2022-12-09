import 'package:flutter/material.dart';

class UiParameters {
  static bool isDarkMode(BuildContext ctx) {
    return Theme.of(ctx).brightness == Brightness.dark;
  }
}
