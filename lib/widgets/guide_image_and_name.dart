import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';

class GuideImageAndName extends StatelessWidget {
  const GuideImageAndName({
    super.key,
    required this.image,
    required this.name,
  });

  final String image, name;

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
          child: Text(
            name,
            style: AppStyles.styleMedium14
                .copyWith(color: const Color(0xffFFFFFF)),
          ),
        )
      ],
    );
  }
}
