import 'package:flutter/material.dart';
import 'package:restaurants_test/theme/text_styles.dart';

class ApplyResponseCard extends StatelessWidget {
  const ApplyResponseCard({
    required this.icon,
    required this.text,
    required this.backgroundColor,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final String text;
  final Icon icon;
  final Color backgroundColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 52,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 10),
            Text(
              text,
              style: AppTextStyles.s16w700White,
            ),
          ],
        ),
      ),
    );
  }
}
