import 'package:flutter/material.dart';
import 'package:travel_mate/constants.dart';
import 'package:travel_mate/core/utils/app_colors.dart';
import 'package:travel_mate/core/widgets/custom_button.dart';
import 'package:travel_mate/core/widgets/custom_text_form_field.dart';
import 'package:travel_mate/features/auth/peresntation/view/widgets/have_an_account_widget.dart';
import 'package:travel_mate/utils/app_styles.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 24,
            ),
            Text(
              "Sign up now",
              style: AppStyles.styleSemiBold30(context),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Please fill the detail and create account",
              style: AppStyles.styleRegular16(context),
            ),
            const SizedBox(
              height: 40,
            ),
            const CustomTextFormField(
              textInputType: TextInputType.name,
              hintText: 'Full name',
            ),
            const SizedBox(
              height: 24,
            ),
            const CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: 'Email',
            ),
            const SizedBox(
              height: 24,
            ),
            const CustomTextFormField(
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: AppColors.primaryColor,
              ),
              textInputType: TextInputType.visiblePassword,
              hintText: 'Password',
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Password must be 8 Character",
                  style: AppStyles.styleSemiBold16(context)
                      .copyWith(color: AppColors.lightPrimaryColor),
                ),
              ],
            ),
            const SizedBox(
              height: 33,
            ),
            CustomButton(title: "Sign up", onPressed: () {}),
            const SizedBox(
              height: 33,
            ),
            const HaveAnAccountWidget(),
            const SizedBox(
              height: 33,
            ),
          ],
        ),
      ),
    );
  }
}
