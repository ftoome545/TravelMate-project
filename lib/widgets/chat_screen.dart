import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/chat_screen_confirm_box.dart';
import 'package:travel_mate/widgets/chat_screen_message_area.dart';
import 'package:travel_mate/widgets/chat_screen_message_text_field.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
    required this.image,
    required this.name,
  });
  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFEAF1),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xff4A6670),
        ),
        title: Row(
          children: [
            Image.asset(
              image,
              height: 50,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              name,
              style: AppStyles.styleMedium14.copyWith(color: Colors.black),
            ),
          ],
        ),
        actions: [
          GestureDetector(
              onTap: () {}, child: SvgPicture.asset(Assets.imagesMoreIcon)),
          const SizedBox(width: 10),
        ],
      ),
      body: const Column(
        children: [
          ChatScreenConfirmBox(),
          Expanded(child: ChatScreenMessagesArea()),
          ChatScreenMessageTextField(),
        ],
      ),
    );
  }
}
