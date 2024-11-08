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
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
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
                        style: AppStyles.styleRegular14
                            .copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '10:35 am',
                        style: AppStyles.styleRegular12,
                      ),
                      SizedBox(
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
