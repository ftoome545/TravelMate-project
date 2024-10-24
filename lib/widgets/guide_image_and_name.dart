import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';

class GuideImageAndName extends StatelessWidget {
  const GuideImageAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
          child: Image.asset(
            Assets.imagesGuideSarahImage,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 152, bottom: 7, left: 49, right: 49),
          child: Text(
            'Sarah',
            style: AppStyles.styleMedium14
                .copyWith(color: const Color(0xffFFFFFF)),
          ),
        )
      ],
    );
  }
}
