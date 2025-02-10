import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:travel_mate/constants.dart';
// import 'package:travel_mate/core/services/shared_preferences_ton.dart';
// import 'package:travel_mate/features/auth/peresntation/view/login_view.dart';
import 'package:travel_mate/features/splash/peresntation/view/welcome_view.dart';
import 'package:travel_mate/utils/app_images.dart';

// import '../../../../onBoarding/peresntation/view/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset(Assets.imagesSplashTop),
        Row(
          children: [
            const SizedBox(
              width: 41,
            ),
            Expanded(child: Image.asset(Assets.imagesTravelMateLogo)),
            const SizedBox(
              width: 41,
            ),
          ],
        ),
        SvgPicture.asset(Assets.imagesSplashBottom),
      ],
    );
  }

  void executeNavigation() {
    // bool isOnBoardingViewScreen = Prefs.getBool(kIsOnBoardingViewScreen);
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, WelcomeView.routeName);
    });
  }
}
