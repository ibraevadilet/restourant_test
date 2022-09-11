import 'package:flutter/material.dart';
import 'package:restaurants_test/components/app_indicator.dart';
import 'package:restaurants_test/theme/app_colors.dart';
import 'package:restaurants_test/theme/text_styles.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    required this.text,
    this.color = AppColors.color4631D2,
    required this.onPress,
    Key? key,
    this.width = double.infinity,
    this.isFullFilled = false,
    this.isLoading = false,
    this.padding = 16.0,
    this.height = 64,
    this.radius = 6.0,
    this.textStyle = AppTextStyles.s16w700colorC3C3C3manrope,
  }) : super(key: key);

  final double width;
  final double height;
  final double padding;
  final Color color;
  final bool isFullFilled;
  final double radius;
  final bool isLoading;
  final TextStyle textStyle;
  final String text;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: SizedBox(
        height: height,
        width: width,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              color,
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
          ),
          onPressed: isLoading ? null : onPress,
          child: isLoading
              ? const AppIndicator()
              : Text(
                  text,
                  style: textStyle,
                ),
        ),
      ),
    );
  }
}
