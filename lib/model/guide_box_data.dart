import 'package:flutter/material.dart';
import 'package:travel_mate/model/guide_box_info_model.dart';
import 'package:travel_mate/utils/app_images.dart';

class GuideBoxData extends ChangeNotifier {
  List<GuideBoxInfoModel> guideBoxInfoModel = const [
    GuideBoxInfoModel(
      image: Assets.imagesGuideSarahImage,
      name: 'Sarah',
      brifData: 'Here we show the guide information',
      reveiws: '4',
      rating: '4',
      price: 'Free',
      city: 'Riydh',
    ),
    GuideBoxInfoModel(
      image: Assets.imagesGuideAliImage,
      name: 'Ali',
      brifData: 'Here we show the guide information',
      reveiws: '14',
      rating: '5',
      price: 'SAR 50/h',
      city: 'Taif',
    ),
  ];
}
