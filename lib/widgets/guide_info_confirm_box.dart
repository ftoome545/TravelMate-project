import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/guide_rating_display.dart';

class GuideInfoConfirmBox extends StatelessWidget {
  const GuideInfoConfirmBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      height: 298,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              child: Image.asset(
                Assets.imagesGuideImageInConfirmScreen,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 34,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'I will be your tour guide for this trip',
                  style: AppStyles.styleRegular14(context)
                      .copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Name: Ahmed',
                  style: AppStyles.styleRegular14(context)
                      .copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Age: 25',
                  style: AppStyles.styleRegular14(context)
                      .copyWith(color: Colors.black),
                ),
                const Divider(
                  height: 50,
                  color: Color(0xff7AA0A7),
                ),
                Text(
                  'Rating',
                  style: AppStyles.styleRegular14(context)
                      .copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: 11,
                ),
                const GuideRatingDisplay(
                  guideRating: 3,
                  starSize: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
