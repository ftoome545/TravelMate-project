import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/constants.dart';
import 'package:travel_mate/core/utils/app_colors.dart';
import 'package:travel_mate/features/onBoarding/peresntation/view/widget/on_boarding_image.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';

class OnBoardingPageOne extends StatelessWidget {
  const OnBoardingPageOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          const OnBoardingImage(
            image: Assets.imagesSelectGenderImage,
            isVisible: false,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
            child: Text(
              "Please choose your gender",
              style: AppStyles.styleSemiBold25(context),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 24,
              ),
              Expanded(
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  label: Text(
                    "Male",
                    style: AppStyles.styleSemiBold16(context),
                  ),
                  icon: SvgPicture.asset(Assets.imagesMale),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  label: Text(
                    "Female",
                    style: AppStyles.styleSemiBold16(context),
                  ),
                  icon: SvgPicture.asset(Assets.imagesFemaleIcon),
                ),
              ),
              const SizedBox(
                width: 24,
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
