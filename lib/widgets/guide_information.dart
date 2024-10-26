import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/guide_rating_display.dart';

class GuideInformation extends StatelessWidget {
  const GuideInformation({
    super.key,
    required this.brifData,
    required this.reveiws,
    required this.rating,
  });

  final String brifData, reveiws, rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 2,
            ),
            SvgPicture.asset(Assets.imagesQuoteIcon1),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 9),
          child: Text(
            textAlign: TextAlign.center,
            brifData,
            // 'Here we show the guide information',
            style: AppStyles.styleRegular14.copyWith(
              color: const Color(0xff000000),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesQuoteIcon2),
            const SizedBox(
              width: 13,
            ),
          ],
        ),
        const Divider(
          color: Color(0xffACC5CB),
          height: 34,
        ),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Reveiws',
                    style: AppStyles.styleRegular12.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    reveiws,
                    style: AppStyles.styleRegular12.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Rating',
                    style: AppStyles.styleRegular12.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  GuideRatingDisplay(
                    guideRating: double.parse(rating),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
      ],
    );
  }
}
