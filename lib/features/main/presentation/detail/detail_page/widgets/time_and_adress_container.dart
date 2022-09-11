import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurants_test/components/spaces.dart';
import 'package:restaurants_test/core/images/app_images.dart';
import 'package:restaurants_test/theme/app_colors.dart';
import 'package:restaurants_test/theme/text_styles.dart';

class TimeAndAdressContainer extends StatelessWidget {
  const TimeAndAdressContainer({
    required this.open,
    required this.close,
    required this.adress,
    Key? key,
  }) : super(key: key);

  final String open;
  final String close;
  final String adress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      height: 100,
      width: getWidth(context),
      decoration: const BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: AppColors.colorC3C3C3),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              SvgPicture.asset(AppImages.clockIcon),
              const SizedBox(width: 12),
              Text(
                'Работаем с $open до $close',
                style: AppTextStyles.s16w400colorBlackmanrope,
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(AppImages.adressIcon),
              const SizedBox(width: 12),
              Text(
                adress,
                style: AppTextStyles.s16w400colorBlackmanrope,
              )
            ],
          ),
        ],
      ),
    );
  }
}
