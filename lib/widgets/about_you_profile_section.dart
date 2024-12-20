import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/activities_and_languages.dart';
import 'package:travel_mate/widgets/general_info_about_you.dart';
import 'package:travel_mate/widgets/hourly_cost_dialog.dart';
import 'package:travel_mate/widgets/languages_and_activites_choose.dart';
import 'package:travel_mate/widgets/white_container_filter_page.dart';

class AboutYouProfileSection extends StatefulWidget {
  const AboutYouProfileSection({super.key});

  @override
  State<AboutYouProfileSection> createState() => _AboutYouProfileSectionState();
}

class _AboutYouProfileSectionState extends State<AboutYouProfileSection> {
  String iWillGuideYou = "", hourlyCost = "";
  String? myGender = "", yesOrNo = "Yes", currency;
  final String _selectedCurrency = 'USD';
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _costController = TextEditingController();

  // Track the checkboxes' state
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

  void _showIWillGuideYouDialog() {
    _controller.text = iWillGuideYou;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('About You', style: AppStyles.styleMedium20),
          content: TextField(
            cursorColor: const Color(0xff4A6670),
            controller: _controller,
            maxLines: 5,
            decoration: InputDecoration(
                hintText:
                    'Write here how would be the ideal tour in your city?',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff4A6670)))),
          ),
          actions: [
            TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(const Color(0xffDFEAF1))),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancel',
                style: AppStyles.styleRegular16
                    .copyWith(color: const Color(0xff4A6670)),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff4A6670),
              ),
              onPressed: () {
                setState(() {
                  iWillGuideYou = _controller.text;
                });
                Navigator.pop(context);
              },
              child: Text(
                'Save',
                style: AppStyles.styleRegular16.copyWith(color: Colors.white),
              ),
            ),
          ],
        );
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

  void _showHourlyCostDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return HourlyCostDialog(
          yesOrNo: yesOrNo,
          costController: _costController,
          selectedCurrency: _selectedCurrency,
          onSave: (cost, selectedCurrency) {
            setState(() {
              hourlyCost = cost;
              currency = selectedCurrency;
            });
          },
        );
      },
    );
  }

  void _showLanguagesDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return ActivitiesAndLanguagesDialog(activities: languages);
      },
    );
  }

  void _showMyGenderDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setStateDialog) {
          return AlertDialog(
            title: const Text('My Gender', style: AppStyles.styleMedium20),
            content: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 98),
              child: Column(
                children: ['Male', 'Female'].map((gender) {
                  return Expanded(
                    child: RadioListTile(
                      fillColor:
                          WidgetStateProperty.all(const Color(0xff1C82AA)),
                      title: Text(
                        gender,
                        style: AppStyles.styleMedium16
                            .copyWith(color: const Color(0xffA2BDC2)),
                      ),
                      value: gender,
                      groupValue: myGender,
                      onChanged: (value) {
                        setStateDialog(() {
                          myGender = value!;
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
            actions: [
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(const Color(0xffDFEAF1))),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: AppStyles.styleRegular16
                      .copyWith(color: const Color(0xff4A6670)),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff4A6670),
                ),
                onPressed: () {
                  setState(() {
                    myGender;
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'Save',
                  style: AppStyles.styleRegular16.copyWith(color: Colors.white),
                ),
              ),
            ],
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFEAF1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Color(0xff4A6670),
        ),
        title: const Text(
          'About You',
          style: AppStyles.styleMedium20,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          GeneralInfoSections(
            variableName: iWillGuideYou,
            functionName: _showIWillGuideYouDialog,
            title: 'I Will Guide You',
          ),
          const SizedBox(
            height: 24,
          ),
          WhiteContainerFilterpage(
              height: 49,
              child: LanguagesAndActivitesChoose(
                onTap: () {
                  _showActivitiesDialog();
                },
                title: 'Activities ',
              )),
          const SizedBox(
            height: 24,
          ),
          WhiteContainerFilterpage(
            height: 49,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hourly Cost',
                    style: AppStyles.styleMedium16.copyWith(
                      color: const Color(0xffA2BDC2),
                    ),
                  ),
                  Row(
                    children: [
                      if (hourlyCost != null && currency != null)
                        Text(
                          '$hourlyCost $currency',
                          style: AppStyles.styleRegular12.copyWith(
                            color: Colors.grey.shade600,
                          ),
                        ),
                      GestureDetector(
                          onTap: () {
                            _showHourlyCostDialog();
                          },
                          child: SvgPicture.asset(Assets.imagesArrowRightIcon)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          WhiteContainerFilterpage(
            height: 49,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Gender',
                    style: AppStyles.styleMedium16.copyWith(
                      color: const Color(0xffA2BDC2),
                    ),
                  ),
                  Row(
                    children: [
                      if (myGender != null)
                        Text(
                          '$myGender',
                          style: AppStyles.styleRegular12.copyWith(
                            color: Colors.grey.shade600,
                          ),
                        ),
                      GestureDetector(
                          onTap: () {
                            _showMyGenderDialog();
                          },
                          child: SvgPicture.asset(Assets.imagesArrowRightIcon)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          WhiteContainerFilterpage(
              height: 49,
              child: LanguagesAndActivitesChoose(
                onTap: () {
                  _showLanguagesDialog();
                },
                title: 'Languages ',
              )),
        ],
      ),
    );
  }
}
