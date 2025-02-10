import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travel_mate/features/auth/peresntation/view/signup_view.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../utils/app_styles.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: "Don't have an account?",
              style: AppStyles.styleSemiBold16(context).copyWith(
                color: AppColors.lightPrimaryColor,
              )),
          TextSpan(
              text: ' ', style: AppStyles.styleSemiBold16(context).copyWith()),
          TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, SignupView.routeName);
                },
              text: "SignUp",
              style: AppStyles.styleBold16(context).copyWith(
                color: AppColors.primaryColor,
              )),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
