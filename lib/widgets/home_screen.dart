import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/filter_icon.dart';
import 'package:travel_mate/widgets/guide_image_and_name.dart';
import 'package:travel_mate/widgets/home_search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: HomeSearchBar(),
                ),
                SizedBox(
                  width: 14,
                ),
                FilterIcon(),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 35, left: 23, right: 23),
        child: Container(
          height: 188,
          decoration: ShapeDecoration(
            color: const Color(0xffDFEAF1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: const Row(
            children: [
              Expanded(
                child: GuideImageAndName(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
