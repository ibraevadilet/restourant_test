import 'package:flutter/material.dart';
import 'package:restaurants_test/components/spaces.dart';
import 'package:restaurants_test/theme/app_colors.dart';
import 'package:restaurants_test/theme/text_styles.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    required this.hintText,
    required this.controller,
    this.isUnderLine = true,
    this.isVisability = false,
    this.validator,
    this.textInputType = TextInputType.text,
    Key? key,
  }) : super(key: key);
  final String hintText;
  final bool isUnderLine;
  final TextEditingController controller;
  final bool isVisability;
  final FormFieldValidator<String>? validator;
  final TextInputType textInputType;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool isVisability = widget.isVisability;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getWidth(context),
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: widget.validator,
        controller: widget.controller,
        keyboardType: widget.textInputType,
        obscureText: isVisability,
        decoration: InputDecoration(
          suffixIcon: widget.isVisability
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isVisability = !isVisability;
                    });
                  },
                  icon: isVisability
                      ? const Icon(Icons.visibility_off_outlined)
                      : const Icon(Icons.visibility_outlined),
                  color: Colors.black,
                )
              : const SizedBox(),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 0, vertical: 19),
          hintText: widget.hintText,
          hintStyle: AppTextStyles.s16w400colorC3C3C3manrope,
          filled: true,
          fillColor: Colors.white,
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.colorE0E6ED),
          ),
          enabledBorder: widget.isUnderLine
              ? const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.colorE0E6ED),
                )
              : InputBorder.none,
          disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.color4631D2, width: 2),
          ),
        ),
      ),
    );
  }
}
