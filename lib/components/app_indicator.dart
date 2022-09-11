import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppIndicator extends StatelessWidget {
  const AppIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 24,
        width: 24,
        child: Platform.isAndroid
            ? const CircularProgressIndicator(
                color: Colors.blue,
                strokeWidth: 2.5,
              )
            : const CupertinoActivityIndicator(),
      ),
    );
  }
}
