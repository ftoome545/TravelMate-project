import 'package:flutter/material.dart';
import 'package:travel_mate/core/utils/app_colors.dart';
import 'package:travel_mate/utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.textInputType,
      this.suffixIcon});
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintStyle: AppStyles.styleSemiBold18(context)
              .copyWith(color: AppColors.lightPrimaryColor),
          hintText: hintText,
          filled: true,
          fillColor: AppColors.secondaryColor,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          width: 1,
          color: AppColors.secondaryColor,
        ));
  }
}
