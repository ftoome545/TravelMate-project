import 'package:flutter/material.dart';
import 'package:travel_mate/widgets/arrived_message_box_list_view.dart';

class MessagesShow extends StatelessWidget {
  const MessagesShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.only(top: 10),
        child: ArrivedMessageBoxListView(),
      ),
    );
  }
}
