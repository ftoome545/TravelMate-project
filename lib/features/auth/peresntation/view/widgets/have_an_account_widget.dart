import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../utils/app_styles.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: "Already have an account?",
              style: AppStyles.styleSemiBold16(context).copyWith(
                color: AppColors.lightPrimaryColor,
              )),
          TextSpan(
              text: ' ', style: AppStyles.styleSemiBold16(context).copyWith()),
          TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pop(context);
                },
              text: "Sign in",
              style: AppStyles.styleBold16(context).copyWith(
                color: AppColors.primaryColor,
              )),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
