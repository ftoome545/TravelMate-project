import 'package:flutter/material.dart';
import 'package:travel_mate/features/onBoarding/peresntation/view/widget/on_boarding_page_one.dart';

import 'on_boarding_page_three.dart';
import 'on_boarding_page_two.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        OnBoardingPageOne(),
        OnBoardingPageTwo(),
        OnBoardingPageThree()
      ],
    );
  }
}
