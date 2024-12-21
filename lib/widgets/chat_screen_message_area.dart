import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';

class ChatScreenMessagesArea extends StatelessWidget {
  const ChatScreenMessagesArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 21,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            height: 51,
            decoration: const ShapeDecoration(
                color: Color(0xffFFFFFF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ))),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 19,
                      ),
                      Text(
                        'Hi, I’m Sarah how can I help you?',
                        style: AppStyles.styleRegular14(context)
                            .copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '10:35 am',
                        style: AppStyles.styleRegular12(context),
                      ),
                      const SizedBox(
                        width: 15,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            height: 88,
            decoration: const ShapeDecoration(
                color: Color(0xff4A6670),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ))),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 19,
                      ),
                      Expanded(
                        child: Text(
                          "Hi, I’m Fatima I see your profile and I want to guide me to discover Riyadh",
                          style: AppStyles.styleRegular14(context)
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '10:36 am',
                        style: AppStyles.styleRegular12(context)
                            .copyWith(color: const Color(0xffDBE0E2)),
                      ),
                      const SizedBox(
                        width: 15,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            height: 87,
            decoration: const ShapeDecoration(
                color: Color(0xffFFFFFF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ))),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 35,
                      ),
                      Expanded(
                        child: Text(
                          "Thank you for contacting with me I’d be happy to help you. I’ll guide...",
                          style: AppStyles.styleRegular14(context)
                              .copyWith(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '10:36 am',
                        style: AppStyles.styleRegular12(context),
                      ),
                      const SizedBox(
                        width: 15,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
