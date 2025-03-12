import 'package:flutter/material.dart';
import 'package:travel_mate/constants.dart';
import 'package:travel_mate/features/onBoarding/peresntation/view/widget/on_boarding_image.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';

import '../../../../../core/services/shared_preferences_ton.dart';
import '../../../../auth/peresntation/view/signin_view.dart';

class OnBoardingPageThree extends StatelessWidget {
  const OnBoardingPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          const OnBoardingImage(
            image: Assets.imagesGuideOrTouristImage,
            isVisible: true,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
            child: Text(
              textAlign: TextAlign.center,
              "Are you interested in becoming a travel guide?",
              style: AppStyles.styleSemiBold25(context),
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
            child: Text(
              textAlign: TextAlign.center,
              "Register as a local guide and earn money by offering tours in your city",
              style: AppStyles.styleRegular16(context),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              Prefs.setBool(kIsOnBoardingViewScreen, true);
              Navigator.of(context).pushReplacementNamed(SigninView.routeName);
            },
            child: Text(
              textAlign: TextAlign.center,
              "Maybe later",
              style: AppStyles.styleMedium16(context),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
