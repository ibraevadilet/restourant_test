import 'package:flutter/material.dart';
import 'package:restaurants_test/main.dart';
import 'package:restaurants_test/theme/text_styles.dart';

void showErrorSnackBar(BuildContext context, String text) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Text(
              text,
              textAlign: TextAlign.center,
            ),
            actions: [
              ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok'))
            ],
          ));
}

void showSuccessSnackBar(String text) {
  scaffoldKey.currentState?.showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 1),
      elevation: 0,
      backgroundColor: Colors.transparent,
      content: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.7),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: AppTextStyles.s16w700White,
        ),
      ),
    ),
  );
}
