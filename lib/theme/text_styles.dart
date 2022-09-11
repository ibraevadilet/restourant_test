import 'package:flutter/material.dart';
import 'package:restaurants_test/theme/app_colors.dart';
import 'package:restaurants_test/theme/font_family.dart';

abstract class AppTextStyles {
  static const TextStyle s15w500blackmanrope = TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    fontFamily: FontFamily.manropeFont,
  );

  static const TextStyle s16w400colorC3C3C3manrope = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      fontFamily: FontFamily.manropeFont,
      color: AppColors.colorC3C3C3);
  static const TextStyle s16w400colorBlackmanrope = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      fontFamily: FontFamily.manropeFont,
      color: AppColors.colorBlack);

  static const TextStyle s16w700colorC3C3C3manrope = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      fontFamily: FontFamily.manropeFont,
      color: AppColors.colorWhite);

  static const TextStyle s16w400color929292manrope = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      fontFamily: FontFamily.manropeFont,
      color: AppColors.color929292);

  static const TextStyle s13w400color4631D2manrope = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 13,
      fontFamily: FontFamily.manropeFont,
      decoration: TextDecoration.underline,
      color: AppColors.color4631D2);

  static const TextStyle s16w700black = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 16, color: AppColors.colorBlack);
  static const TextStyle s16w700White = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: AppColors.colorWhite,
      fontFamily: FontFamily.manropeFont);
}
