import 'package:flutter/material.dart';
import 'package:restaurants_test/theme/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    required this.title,
    this.isLeading = false,
    Key? key,
  }) : super(key: key);
  final String title;
  final bool isLeading;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: AppTextStyles.s15w500blackmanrope,
        ),
        leading: isLeading
            ? IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ))
            : null,
        elevation: 0,
      ),
    );
  }
}
