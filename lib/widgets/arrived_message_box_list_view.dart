import 'package:flutter/material.dart';
import 'package:travel_mate/model/arrived_message_box_model.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/widgets/arrived_message_box.dart';

class ArrivedMessageBoxListView extends StatelessWidget {
  const ArrivedMessageBoxListView({super.key});

  static const List items = [
    ArrivedMessageBoxModel(
        guideImage: Assets.imagesSarahCircleImage,
        guideName: 'Sarah',
        message:
            "Thank you for contacting with me I’d be happy to help you. I’ll guide...",
        date: 'Yesterday'),
    ArrivedMessageBoxModel(
        guideImage: Assets.imagesAhmedGuideCircleImage,
        guideName: 'Ahmed',
        message:
            "Thank you for contacting with me I’d be happy to help you. I’ll guide...",
        date: 'Yesterday'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ArrivedMessageBox(
              arrivedMessageBoxModel: items[index],
            ),
          );
        });
  }
}
