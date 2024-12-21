import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/navigation_screen.dart';

class NoMessagesYetShow extends StatelessWidget {
  const NoMessagesYetShow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffDFEAF1),
      child: Column(
        children: [
          const SizedBox(
            height: 96,
          ),
          Center(
            child: Container(
              height: 154,
              decoration: const ShapeDecoration(
                  color: Color(0xff4A6670),
                  shape: CircleBorder(
                    side: BorderSide.none,
                  )),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
                child: SvgPicture.asset(Assets.imagesMessagesScreenIcon),
              ),
            ),
          ),
          const SizedBox(
            height: 53,
          ),
          Text(
            "You don’t have any messages yet",
            style:
                AppStyles.styleMedium20(context).copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            'When you do, you can find them here',
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const SizedBox(
                width: 18,
              ),
              Expanded(
                child: SizedBox(
                  height: 53,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff4A6670),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const NavigationScreen()));
                      },
                      child: Text(
                        'Browse a Guide',
                        style: AppStyles.styleSemiBold24(context),
                      )),
                ),
              ),
              const SizedBox(
                width: 18,
              ),
            ],
          )
        ],
      ),
    );
  }
}
