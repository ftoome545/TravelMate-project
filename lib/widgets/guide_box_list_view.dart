import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_mate/model/guide_box_data.dart';
import 'package:travel_mate/widgets/guide_info_box.dart';

class GuideBoxListView extends StatelessWidget {
  const GuideBoxListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Provider.of<GuideBoxData>(context).guideBoxInfoModel.length,
        itemBuilder: (context, index) {
          return GuideInfoBox(
            guideBoxInfoModel:
                Provider.of<GuideBoxData>(context).guideBoxInfoModel[index],
          );
        });
  }
}
