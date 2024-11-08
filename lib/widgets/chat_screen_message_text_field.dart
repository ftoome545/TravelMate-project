import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';

class ChatScreenMessageTextField extends StatelessWidget {
  const ChatScreenMessageTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 69,
        color: const Color(0xffFFFFFF),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 43,
                  decoration: ShapeDecoration(
                      color: const Color(0xffDFEAF1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 11),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Write your message here',
                          hintStyle: AppStyles.styleRegular14
                              .copyWith(color: const Color(0xff7AA0A7)),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              GestureDetector(
                  onTap: () {}, child: SvgPicture.asset(Assets.imagesSendIcon)),
            ],
          ),
        ));
  }
}
