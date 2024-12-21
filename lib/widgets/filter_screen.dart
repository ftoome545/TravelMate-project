import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/activities_and_languages.dart';
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
  final Map<String, bool> activities = {
    "Translation": false,
    "Shopping": false,
    "Restaurants": false,
    "Museums": false,
    "Culture": false,
  };

  final Map<String, bool> languages = {
    "Arabic": false,
    "English": false,
    "German": false,
    "Chinese": false,
    "Spanish": false,
  };
  void _showLanguagesDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return ActivitiesAndLanguagesDialog(activities: languages);
      },
    );
  }

  void _showActivitiesDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return ActivitiesAndLanguagesDialog(activities: activities);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFEAF1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Filters',
          style: AppStyles.styleRegular20(context),
        ),
        iconTheme: const IconThemeData(color: Color(0xff4A6670)),
        actions: [
          GestureDetector(
            onTap: () {
              print('here is where you pass filter data to SearchDelegate ');
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 23),
              child: Text(
                'Apply',
                style: AppStyles.styleSemiBold20(context),
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
                  onTap: () {
                    _showLanguagesDialog();
                  },
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
                  onTap: () {
                    _showActivitiesDialog();
                  },
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
                child: Center(
                  child: Text(
                    'Clear Filters',
                    style: AppStyles.styleSemiBold16(context)
                        .copyWith(color: const Color(0xffFF3B30)),
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
        style: AppStyles.styleMedium16(context).copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}
