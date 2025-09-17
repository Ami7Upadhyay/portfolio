import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      error: AppColors.error,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 16, color: AppColors.lightText),
    ),
    // Add more customizations here (buttons, input decoration, etc.)
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      error: AppColors.error,
    ),
    textTheme: GoogleFonts.firaCodeTextTheme(
      const TextTheme(
        bodyMedium: TextStyle(fontSize: 32),
      ),
    ),
  );
}
