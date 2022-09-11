import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurants_test/core/images/app_images.dart';
import 'package:restaurants_test/theme/app_colors.dart';
import 'package:restaurants_test/theme/font_family.dart';

class FinderTextField extends StatelessWidget {
  const FinderTextField({required this.onFieldSubmitted, Key? key, this.isFilled = false}) : super(key: key);
  final bool isFilled;
  final Function(String value) onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.search,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        fillColor: AppColors.colorWhite,
        filled: isFilled,
        contentPadding: EdgeInsets.zero,
        hintText: 'Поиск',
        hintStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            fontFamily: FontFamily.manropeFont,
            color: AppColors.color929292),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(AppImages.finderIcon),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.colorC3C3C3),
          borderRadius: BorderRadius.circular(6),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.colorC3C3C3),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
