import 'package:flutter/material.dart';

import '../presentation/colors/jolly_colors.dart';
import '../presentation/sizes/jolly_sizes.dart';
import 'jolly_color_scheme.dart';

class JollyTheme {
  static ThemeData get light => ThemeData(
    brightness: Brightness.light,
    colorScheme: JollyColorScheme.light,
    useMaterial3: true,
    scaffoldBackgroundColor: JollyColorScheme.light.surface,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: JollyColors.textFieldFillLight,
      isDense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: JollySizes.s25, vertical: JollySizes.s16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(JollySizes.s22),
        borderSide: BorderSide(color: JollyColors.border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(JollySizes.s22),
        borderSide: BorderSide(color: JollyColors.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(JollySizes.s22),
        borderSide: BorderSide(color: JollyColors.primaryButton),
      ),
    ),
  );

  static ThemeData get dark => ThemeData(
    brightness: Brightness.dark,
    colorScheme: JollyColorScheme.dark,
    useMaterial3: true,
    scaffoldBackgroundColor: JollyColorScheme.dark.surface,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: JollyColors.textFieldFillDark,
      isDense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: JollySizes.s25, vertical: JollySizes.s16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(JollySizes.s22),
        borderSide: BorderSide(color: JollyColors.border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(JollySizes.s22),
        borderSide: BorderSide(color: JollyColors.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(JollySizes.s22),
        borderSide: BorderSide(color: JollyColors.primaryButton),
      ),
    ),
  );
}
