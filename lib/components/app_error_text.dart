import 'package:flutter/material.dart';
import 'package:restaurants_test/components/default_button.dart';
import 'package:restaurants_test/components/spaces.dart';
import 'package:restaurants_test/theme/app_colors.dart';
import 'package:restaurants_test/theme/text_styles.dart';

class AppErrorText extends StatelessWidget {
  const AppErrorText({
    required this.text,
    this.onPress,
    Key? key,
  }) : super(key: key);
  final String text;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        width: getWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: AppTextStyles.s16w700black,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            onPress != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 82),
                    child: DefaultButton(
                      text: 'Повторить',
                      color: AppColors.color4631D2,
                      onPress: onPress!,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
