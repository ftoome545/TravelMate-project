import 'package:flutter/material.dart';
import 'package:travel_mate/core/utils/app_colors.dart';
import 'package:travel_mate/utils/app_styles.dart';

AppBar buildAppBar(BuildContext context, String? title) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(Icons.arrow_back, color: AppColors.primaryColor),
    ),
    centerTitle: true,
    title: Text(
      title ?? '',
      style: AppStyles.styleSemiBold30(context),
    ),
  );
}
