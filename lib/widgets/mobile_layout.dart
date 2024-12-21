import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/custom_button.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 99,
          ),
          Text(
            textAlign: TextAlign.center,
            'Welcom to',
            style: AppStyles.styleSemiBold25(context),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(Assets.imagesTravelMateLogo)),
          const SizedBox(
            height: 88,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25, left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: CustomButton(
                  text: 'Sign in',
                  onPressed: () {},
                )),
                const SizedBox(
                  width: 56,
                ),
                Expanded(
                    child: CustomButton(
                  text: 'Sign up',
                  onPressed: () {},
                ))
              ],
            ),
          ),
          const SizedBox(
            height: 39,
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
              ]))
        ],
      ),
    );
  }
}
