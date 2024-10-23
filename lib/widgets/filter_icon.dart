import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';

class FilterIcon extends StatelessWidget {
  const FilterIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 52,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Color(0xff4A6670)),
        child: GestureDetector(
            onTap: () {
              print('Filter icon tapped');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              child: SvgPicture.asset(Assets.imagesOptionsIcon),
            )));
  }
}
