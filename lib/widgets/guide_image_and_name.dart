import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';

class GuideImageAndName extends StatelessWidget {
  const GuideImageAndName({
    super.key,
    required this.image,
    required this.name,
    required this.city,
  });

  final String image, name, city;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
          child: Image.asset(image),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                name,
                style: AppStyles.styleBold16
                    .copyWith(color: const Color(0xffFFFFFF)),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                city,
                style: AppStyles.styleRegular12
                    .copyWith(color: const Color(0xffFFFFFF)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
