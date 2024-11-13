import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_images.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/guide_info_confirm_box.dart';

class GuideBookingScreen extends StatelessWidget {
  const GuideBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFEAF1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color(0xff4A6670)),
        // leading: IconButton(
        //     onPressed: () {}, icon: SvgPicture.asset(Assets.imagesBackIcon)),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Cancel',
                style: AppStyles.styleMedium20,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Container(
                decoration: const ShapeDecoration(
                    shape: CircleBorder(
                  side: BorderSide.none,
                )),
                child: Image.asset(
                  Assets.imagesTravelMateLogo,
                  height: 124,
                )),
            const SizedBox(
              height: 23,
            ),
            const GuideInfoConfirmBox(),
            const SizedBox(
              height: 99,
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
                        onPressed: () {},
                        child: const Text(
                          'Confirm your booking',
                          style: AppStyles.styleSemiBold24,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Are you sure about the booking?',
              style: AppStyles.styleRegular16,
            ),
            const SizedBox(
              height: 13,
            ),
            Text(
              textAlign: TextAlign.center,
              'You will not be able to cancel the booking after confirmation',
              style: AppStyles.styleMedium16.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 46,
            ),
          ],
        ),
      ),
    );
  }
}
