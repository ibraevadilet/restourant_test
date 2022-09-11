import 'package:flutter/material.dart';
import 'package:restaurants_test/components/spaces.dart';
import 'package:restaurants_test/theme/text_styles.dart';

class DetailWidgetDescription extends StatefulWidget {
  const DetailWidgetDescription({required this.description, Key? key})
      : super(key: key);

  final String description;

  @override
  State<DetailWidgetDescription> createState() =>
      _DetailWidgetDescriptionState();
}

class _DetailWidgetDescriptionState extends State<DetailWidgetDescription> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: getWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Описание',
              style: AppTextStyles.s16w400color929292manrope,
            ),
            const SizedBox(height: 5),
            Text(widget.description,
                style: AppTextStyles.s16w400colorC3C3C3manrope
                    .copyWith(color: Colors.black),
                maxLines: isExpanded ? 2 : 100,
                overflow: TextOverflow.ellipsis),
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Text(
                isExpanded ? 'Подробнее' : 'Скрыть',
                style: AppTextStyles.s13w400color4631D2manrope,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
