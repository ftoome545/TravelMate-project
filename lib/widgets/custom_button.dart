import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff4A6670),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              )),
          onPressed: onPressed,
          child: Text(
            text,
            style: AppStyles.styleSemiBold18,
          )),
    );
  }
}
