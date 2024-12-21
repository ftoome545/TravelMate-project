import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';

class SuccessfullyBookingDialog extends StatelessWidget {
  const SuccessfullyBookingDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Color(0xff4A6670),
                      )),
                  // const SizedBox(
                  //   height: 24,
                  // ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 22),
                    decoration: BoxDecoration(
                        color: const Color(0xffDFEAF1),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        BookingDetailsRows(
                          [
                            const SizedBox(
                              width: 20,
                            ),
                            SvgPicture.asset(Assets.imagesCalendarIcon),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Sep 28 2024 - 28 Sep 2024',
                              style: AppStyles.styleMedium16(context).copyWith(
                                  color: Colors.black,
                                  decoration: TextDecoration.none),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 19),
                          child: Divider(
                            height: 9,
                            color: Color(0xff7AA0A7),
                          ),
                        ),
                        BookingDetailsRows(
                          [
                            const SizedBox(
                              width: 20,
                            ),
                            Text('Location:',
                                style: AppStyles.styleMedium16(context)
                                    .copyWith(
                                        color: const Color(0xff7AA0A7),
                                        decoration: TextDecoration.none)),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Saudi Arabia, Jeddah',
                              style: AppStyles.styleMedium16(context).copyWith(
                                  color: Colors.black,
                                  decoration: TextDecoration.none),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 19),
                          child: Divider(
                            height: 9,
                            color: Color(0xff7AA0A7),
                          ),
                        ),
                        BookingDetailsRows(
                          [
                            const SizedBox(
                              width: 20,
                            ),
                            Text('Group Size:',
                                style: AppStyles.styleMedium16(context)
                                    .copyWith(
                                        color: const Color(0xff7AA0A7),
                                        decoration: TextDecoration.none)),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Just Me',
                              style: AppStyles.styleMedium16(context).copyWith(
                                  color: Colors.black,
                                  decoration: TextDecoration.none),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 19),
                          child: Divider(
                            height: 9,
                            color: Color(0xff7AA0A7),
                          ),
                        ),
                        BookingDetailsRows(
                          [
                            const SizedBox(
                              width: 20,
                            ),
                            Text('Your Guide:',
                                style: AppStyles.styleMedium16(context)
                                    .copyWith(
                                        color: const Color(0xff7AA0A7),
                                        decoration: TextDecoration.none)),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Ahmed',
                              style: AppStyles.styleMedium16(context).copyWith(
                                  color: Colors.black,
                                  decoration: TextDecoration.none),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Your booking was confirmed successfully ',
                    style: AppStyles.styleMedium24(context).copyWith(
                        color: Colors.black, decoration: TextDecoration.none),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Center(child: SvgPicture.asset(Assets.imagesCheckIcon)),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget BookingDetailsRows(List<Widget> children) {
    return Row(
      children: children,
    );
  }
}
