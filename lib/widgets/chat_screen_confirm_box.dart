import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/guide_booking_screen.dart';

class ChatScreenConfirmBox extends StatelessWidget {
  const ChatScreenConfirmBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: const BoxDecoration(
        color: Color(0xffD0DFE6),
        borderRadius: BorderRadius.zero,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Booking with Sarah',
                  style: AppStyles.styleMedium15(context).copyWith(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Text(
                  'Saudi Arabia, Riyadh',
                  style: AppStyles.styleRegular10(context),
                ),
                const SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GuideBookingScreen()));
                  },
                  child: Text(
                    'Confirm your booking',
                    style: AppStyles.styleSemiBold12(context)
                        .copyWith(color: const Color(0xff1C82AA)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GuideBookingScreen()));
                },
                child: SvgPicture.asset(Assets.imagesArrowRightIcon)),
          ),
        ],
      ),
    );
  }
}
