import 'package:flutter/material.dart';
import 'package:travel_mate/constants.dart';
import 'package:travel_mate/core/services/shared_preferences_ton.dart';
import 'package:travel_mate/features/auth/peresntation/view/login_view.dart';
import '../../../../../utils/app_styles.dart';

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage(
      {super.key, required this.image, required this.isVisible});

  final bool isVisible;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 269,
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Visibility(
              visible: isVisible,
              child: GestureDetector(
                onTap: () {
                  Prefs.setBool(kIsOnBoardingViewScreen, true);
                  Navigator.of(context)
                      .pushReplacementNamed(LoginView.routeName);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 24, top: 24),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Skip",
                      style: AppStyles.styleMedium20(context),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
