import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/widgets/custom_search_delegate.dart';
import 'package:travel_mate/widgets/filter_icon.dart';
import 'package:travel_mate/widgets/guide_box_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: GestureDetector(
                          onTap: () {
                            showSearch(
                                context: context,
                                delegate: CustomSearchDelegate());
                          },
                          child: SvgPicture.asset(
                              Assets.imagesHomeScreenSearchImage))),
                  const SizedBox(
                    width: 14,
                  ),
                  const Expanded(
                    child: FilterIcon(),
                  )
                ],
              ),
            ),
          ),
        ),
        body: const GuideBoxListView());
  }
}
