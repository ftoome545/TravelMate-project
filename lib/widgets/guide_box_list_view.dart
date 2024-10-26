import 'package:flutter/material.dart';
import 'package:travel_mate/model/guide_box_info_model.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/widgets/guide_info_box.dart';

class GuideBoxListView extends StatelessWidget {
  const GuideBoxListView({
    super.key,
  });

  final List guideBoxInfoItems = const [
    GuideBoxInfoModel(
      image: Assets.imagesGuideSarahImage,
      name: 'Sarah',
      brifData: 'Here we show the guide information',
      reveiws: '4',
      rating: '4',
      price: 'Free',
    ),
    GuideBoxInfoModel(
        image: Assets.imagesGuideAliImage,
        name: 'Ali',
        brifData: 'Here we show the guide information',
        reveiws: '14',
        rating: '5',
        price: 'SAR 50/h'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: guideBoxInfoItems.length,
        itemBuilder: (context, index) {
          return GuideInfoBox(
            guideBoxInfoModel: guideBoxInfoItems[index],
          );
        });
  }
}
