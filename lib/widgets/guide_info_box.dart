import 'package:flutter/material.dart';
import 'package:travel_mate/model/guide_box_info_model.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/guide_image_and_name.dart';
import 'package:travel_mate/widgets/guide_information.dart';

class GuideInfoBox extends StatelessWidget {
  const GuideInfoBox({
    super.key,
    required this.guideBoxInfoModel,
  });

  final GuideBoxInfoModel guideBoxInfoModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 35, left: 23, right: 23),
          child: Container(
            height: 188,
            decoration: ShapeDecoration(
              color: const Color(0xffDFEAF1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Row(
              children: [
                GuideImageAndName(
                  image: guideBoxInfoModel.image,
                  name: guideBoxInfoModel.name,
                  city: guideBoxInfoModel.city,
                ),
                Expanded(
                  child: GuideInformation(
                    brifData: guideBoxInfoModel.brifData,
                    reveiws: guideBoxInfoModel.reveiws,
                    rating: guideBoxInfoModel.rating,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 30,
            right: 4,
            left: 300,
          ),
          child: Container(
            height: 31,
            decoration: ShapeDecoration(
                color: const Color(0xff4A6670),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 7),
              child: Text(
                guideBoxInfoModel.price,
                style: AppStyles.styleRegular12(context)
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
