import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';

class LanguagesAndActivitesChoose extends StatelessWidget {
  const LanguagesAndActivitesChoose({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppStyles.styleMedium16.copyWith(
              color: const Color(0xffA2BDC2),
            ),
          ),
          GestureDetector(
              onTap: onTap(),
              child: SvgPicture.asset(Assets.imagesArrowRightIcon)),
        ],
      ),
    );
  }
}
