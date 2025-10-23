import 'package:flutter/material.dart';
import 'package:music_mobile_app/theme/app_colors.dart';

final ThemeData theme = ThemeData(
  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: AppBarTheme(color: AppColors.white),
  bottomAppBarTheme: BottomAppBarTheme(color: Colors.transparent),
  primaryColor: AppColors.primary,
  fontFamily: 'Urbanist',
  colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.white,
      onPrimary: Colors.white,
      secondary: Colors.red,
      onSecondary: Colors.black,
      error: AppColors.red,
      onError: AppColors.white,
      surface: AppColors.white,
      onSurface: AppColors.white),
  textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
      titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
      titleSmall: TextStyle(fontSize: 14),
      bodyLarge: TextStyle(fontSize: 18),
      bodyMedium: TextStyle(fontSize: 16),
      bodySmall: TextStyle(fontSize: 14),
      displayLarge: TextStyle(fontSize: 18),
      displayMedium: TextStyle(fontSize: 16),
      displaySmall: TextStyle(fontSize: 14)),
);
