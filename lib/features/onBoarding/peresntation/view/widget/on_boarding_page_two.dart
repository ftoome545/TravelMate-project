import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/constants.dart';
import 'package:travel_mate/core/utils/app_colors.dart';
import 'package:travel_mate/features/onBoarding/peresntation/view/widget/on_boarding_image.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';

class OnBoardingPageTwo extends StatelessWidget {
  const OnBoardingPageTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 24,
          ),
          const OnBoardingImage(
            image: Assets.imagesMyLocationImage,
            isVisible: false,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
            child: Text(
              textAlign: TextAlign.center,
              "Which country or region are you from?",
              style: AppStyles.styleSemiBold25(context),
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          Text(
            textAlign: TextAlign.center,
            "Share your location with others",
            style: AppStyles.styleRegular16(context),
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SearchBar(
              backgroundColor:
                  WidgetStateProperty.all(AppColors.secondaryColor),
              leading: Row(
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  SvgPicture.asset(Assets.imagesSearchIcon),
                  const SizedBox(
                    width: 24,
                  ),
                ],
              ),
              hintText: "Search Location",
              hintStyle:
                  WidgetStateProperty.all(AppStyles.styleRegular16(context)),
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
