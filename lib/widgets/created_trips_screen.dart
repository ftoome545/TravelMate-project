import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/created_trip_box_image_part.dart';
import 'package:travel_mate/widgets/plan_your_trip_box.dart';

class CreatedTripsScreen extends StatelessWidget {
  const CreatedTripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const PlanYourTripBox(),
              const SizedBox(
                height: 16,
              ),
              Text(
                'My plans',
                style: AppStyles.styleSemiBold18.copyWith(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 38),
                height: 228,
                decoration: ShapeDecoration(
                    color: const Color(0xffDFEAF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                child: Column(
                  children: [
                    const Expanded(child: CreatedTripBoxImagePart()),
                    const SizedBox(
                      height: 9,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 11.27,
                        ),
                        SvgPicture.asset(Assets.imagesCalendarIcon),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Sep 28 2024 - 28 Sep 2024',
                          style: AppStyles.styleMedium16
                              .copyWith(color: Colors.black),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SvgPicture.asset(Assets.imagesDeleteIcon),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Divider(
                        height: 10,
                        color: Color(0xff7AA0A7),
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 24,
                        ),
                        Text(
                          'Group size:',
                          style: AppStyles.styleMedium16
                              .copyWith(color: const Color(0xff7AA0A7)),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          'Just Me',
                          style: AppStyles.styleMedium16
                              .copyWith(color: const Color(0xff000000)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
