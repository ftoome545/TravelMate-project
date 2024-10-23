import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      backgroundColor: WidgetStateProperty.all(const Color(0xffFFFFFF)),
      leading: SvgPicture.asset(Assets.imagesSearchIconHomePage),
      hintText: 'Search...',
      hintStyle: WidgetStateProperty.all(AppStyles.styleRegular16),
      shadowColor: WidgetStateColor.transparent,
      side: WidgetStateProperty.all(const BorderSide(color: Color(0xff7AA0A7))),
    );
  }
}
