import 'package:flutter/material.dart';
import 'package:travel_mate/constants.dart';
import 'package:travel_mate/features/auth/peresntation/view/login_view.dart';
import 'package:travel_mate/features/auth/peresntation/view/signup_view.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';

import '../../../../../core/widgets/custom_button.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 99,
            ),
            Text(
              'Welcom to',
              style: AppStyles.styleSemiBold25(context),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  Assets.imagesTravelMateLogo,
                  fit: BoxFit.fill,
                )),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: CustomButton(
                  title: 'Sign in',
                  onPressed: () {
                    Navigator.pushNamed(context, LoginView.routeName);
                  },
                )),
                const SizedBox(
                  width: 24,
                ),
                Expanded(
                    child: CustomButton(
                  title: 'Sign up',
                  onPressed: () {
                    Navigator.pushNamed(context, SignupView.routeName);
                  },
                ))
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: "I confirm that I agree with TravelMate’s ",
                    style: AppStyles.styleRegular16(context),
                  ),
                  TextSpan(
                    text: "Terms of Service ",
                    style: AppStyles.styleBold16(context),
                  ),
                  TextSpan(
                    text: "and ",
                    style: AppStyles.styleRegular16(context),
                  ),
                  TextSpan(
                    text: "Privacy Policy",
                    style: AppStyles.styleBold16(context),
                  )
                ])),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
