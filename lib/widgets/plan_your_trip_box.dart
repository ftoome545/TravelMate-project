import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/plan_your_trip_screen.dart';

class PlanYourTripBox extends StatelessWidget {
  const PlanYourTripBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      decoration: const BoxDecoration(
        color: Color(0xffDFEAF1),
        borderRadius: BorderRadius.zero,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 11,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 41),
            child: Text(
              textAlign: TextAlign.center,
              'Plan your trip in advance and receive offers from locals to save time',
              style: AppStyles.styleMedium14(context).copyWith(
                color: const Color(0xff7AA0A7),
              ),
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          SizedBox(
            height: 42,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 17,
                ),
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff4A6670),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PlanYourTripScreen()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Plan your trip',
                            style: AppStyles.styleMedium20(context).copyWith(
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset(Assets.imagesPlusAddIcon),
                        ],
                      )),
                ),
                const SizedBox(
                  width: 17,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
