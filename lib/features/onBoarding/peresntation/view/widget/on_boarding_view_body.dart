import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_mate/core/utils/app_colors.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: OnBoardingPageView(
          pageController: pageController,
        )),
        DotsIndicator(
          dotsCount: 3,
          position: currentPage.toDouble().toInt(),
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: AppColors.primaryColor.withOpacity(.5),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Visibility(
          visible: currentPage == 0 || currentPage == 1 ? false : true,
          maintainSize: true,
          maintainState: true,
          maintainAnimation: true,
          child: CustomButton(
            title: "Yes",
            onPressed: () {},
          ),
        ),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
