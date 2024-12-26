import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/messages_show.dart';
import 'package:travel_mate/widgets/no_messages_yet_show.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key, required this.hasMessages});
  final bool hasMessages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text(
          'Messages',
          style: AppStyles.styleSemiBold30(context),
        ),
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: const Icon(
        //         Icons.filter_list,
        //         color: Color(0xff4A6670),
        //       )),
        // ],
        // bottom: PreferredSize(
        //     preferredSize: const Size.fromHeight(20),
        //     child: Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           const Text(
        //             'Messages',
        //             style: AppStyles.styleSemiBold30,
        //           ),
        //           IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.filter_list,
        //                 color: Color(0xff4A6670),
        //               ))
        //         ],
        //       ),
        //     )),
      ),
      body: hasMessages ? const MessagesShow() : const NoMessagesYetShow(),
    );
  }
}
