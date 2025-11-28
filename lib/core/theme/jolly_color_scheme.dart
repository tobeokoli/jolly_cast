import 'package:flutter/material.dart';

import '../presentation/colors/jolly_colors.dart';

class JollyColorScheme {
  static ColorScheme get dark => ColorScheme(
    brightness: Brightness.dark,
    primary: JollyColors.primaryButton,
    onPrimary: JollyColors.textPrimary,
    secondary: JollyColors.secondaryButton,
    onSecondary: JollyColors.textSecondary,
    surface: JollyColors.scaffoldDark,
    onSurface: JollyColors.textPrimary,
    error: Colors.redAccent,
    onError: Colors.white,
    tertiary: JollyColors.iconPrimary,
    onTertiary: JollyColors.scaffoldDark,
    outline: JollyColors.border,
    secondaryContainer: JollyColors.bottomNavBarBackgroundDark,
    onSecondaryContainer: JollyColors.bottomNavBarForegroundDark,
  );

  static ColorScheme get light => ColorScheme(
    brightness: Brightness.light,

    primary: JollyColors.primaryButton,
    onPrimary: JollyColors.textPrimary,

    secondary: JollyColors.secondaryButton,
    onSecondary: JollyColors.textSecondary,

    surface: Colors.grey.shade100,
    onSurface: Colors.black,

    error: Colors.red,
    onError: Colors.white,

    tertiary: Colors.grey.shade700,
    onTertiary: Colors.white,

    secondaryContainer: JollyColors.bottomNavBarBackgroundLight,
    onSecondaryContainer: JollyColors.bottomNavBarForegroundLight,
  );
}
