import 'package:flutter/material.dart';
import 'package:restaurants_test/theme/app_colors.dart';

final lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: AppColors.backgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFFFFFFF),
  ),
);

class FontFamily {
  static const String manropeFont = 'Manrope';
}
