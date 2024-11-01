import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/filter_guide_gender.dart';
import 'package:travel_mate/widgets/languages_and_activites_choose.dart';
import 'package:travel_mate/widgets/price_range_slider.dart';
import 'package:travel_mate/widgets/white_container_filter_page.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  RangeValues _currentRangeValues = const RangeValues(0, 0);
  String? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFEAF1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Filters',
          style: AppStyles.styleRegular20,
        ),
        iconTheme: const IconThemeData(color: Color(0xff4A6670)),
        actions: [
          GestureDetector(
            onTap: () {
              print('here is where you pass filter data to SearchDelegate ');
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 23),
              child: Text(
                'Apply',
                style: AppStyles.styleSemiBold20,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            filterSubTitles('Price Range'),
            const SizedBox(
              height: 10,
            ),
            WhiteContainerFilterpage(
              height: 94,
              child: PriceRageSlider(
                currentRangeValues: _currentRangeValues,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            filterSubTitles('Languages'),
            const SizedBox(
              height: 10,
            ),
            WhiteContainerFilterpage(
                height: 49,
                child: LanguagesAndActivitesChoose(
                  title: 'choose languages',
                  onTap: () {},
                )),
            const SizedBox(
              height: 20,
            ),
            filterSubTitles('Activities'),
            const SizedBox(
              height: 10,
            ),
            WhiteContainerFilterpage(
                height: 49,
                child: LanguagesAndActivitesChoose(
                  title: 'Choose Activities',
                  onTap: () {},
                )),
            const SizedBox(
              height: 20,
            ),
            filterSubTitles('Gender'),
            const SizedBox(
              height: 10,
            ),
            WhiteContainerFilterpage(
              height: 98,
              child: FilterGuideGender(
                selectedGender: selectedGender,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.imagesCheckIcon),
                  filterSubTitles('Save my filter settings for future use'),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
                onTap: () {},
                child: const Center(
                  child: Text(
                    'Clear Filters',
                    style: AppStyles.styleSemiBold12,
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Padding filterSubTitles(String filterSubTitle) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Text(
        filterSubTitle,
        style: AppStyles.styleMedium16.copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}
