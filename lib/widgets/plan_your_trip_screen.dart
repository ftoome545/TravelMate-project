import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/plan_trip_choose_date.dart';
import 'package:travel_mate/widgets/search_location_textfeild.dart';
import 'package:travel_mate/widgets/white_container_filter_page.dart';

class PlanYourTripScreen extends StatefulWidget {
  const PlanYourTripScreen({super.key});

  @override
  State<PlanYourTripScreen> createState() => _PlanYourTripScreenState();
}

class _PlanYourTripScreenState extends State<PlanYourTripScreen> {
  String? groupSize = "", typeOfGuide = "";

  String yourLocation = "";
  final TextEditingController _controller = TextEditingController();

  void _showAddLocationDialog() {
    _controller.text = yourLocation; // Set initial text

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SearchLocationTextfeild(
          yourLocation: yourLocation,
          onLocationSelected: (selectedLocation) {
            setState(() {
              yourLocation = selectedLocation; // Update the state
            });
          },
        );
      },
    );
  }

  void _showGroupSizeDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setStateDialog) {
          return AlertDialog(
            title: Text('Select Group Size',
                style: AppStyles.styleMedium20(context)),
            content: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 98),
              child: Column(
                children: ['Just Me', 'Two Person', 'More than Three']
                    .map((groupSizeType) {
                  return Expanded(
                    child: RadioListTile(
                      fillColor:
                          WidgetStateProperty.all(const Color(0xff1C82AA)),
                      title: Text(
                        groupSizeType,
                        style: AppStyles.styleMedium16(context)
                            .copyWith(color: Colors.black),
                      ),
                      value: groupSizeType,
                      groupValue: groupSize,
                      onChanged: (value) {
                        setStateDialog(() {
                          groupSize = value!;
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
                  style: AppStyles.styleRegular16(context)
                      .copyWith(color: const Color(0xff4A6670)),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff4A6670),
                ),
                onPressed: () {
                  setState(() {
                    groupSize;
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'Save',
                  style: AppStyles.styleRegular16(context)
                      .copyWith(color: Colors.white),
                ),
              ),
            ],
          );
        });
      },
    );
  }

  void _showTypeOfGuideDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setStateDialog) {
          return AlertDialog(
            title: Text('Select Type of Guide',
                style: AppStyles.styleMedium20(context)),
            content: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 98),
              child: Column(
                children: ['Male', 'Female'].map((guideType) {
                  return Expanded(
                    child: RadioListTile(
                      fillColor:
                          WidgetStateProperty.all(const Color(0xff1C82AA)),
                      title: Text(
                        guideType,
                        style: AppStyles.styleMedium16(context)
                            .copyWith(color: Colors.black),
                      ),
                      value: guideType,
                      groupValue: typeOfGuide,
                      onChanged: (value) {
                        setStateDialog(() {
                          typeOfGuide = value!;
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
                  style: AppStyles.styleRegular16(context)
                      .copyWith(color: const Color(0xff4A6670)),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff4A6670),
                ),
                onPressed: () {
                  setState(() {
                    typeOfGuide;
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'Save',
                  style: AppStyles.styleRegular16(context)
                      .copyWith(color: Colors.white),
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
          centerTitle: true,
          title: Text(
            'Plan your trip',
            style: AppStyles.styleMedium20(context),
          ),
          iconTheme: const IconThemeData(
            color: Color(0xff4A6670),
          ),
          actions: [
            TextButton(
              child: Text(
                'Apply',
                style: AppStyles.styleSemiBold20(context),
              ),
              onPressed: () {},
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            planTripSubTitles(context, 'Where you want to go?'),
            const SizedBox(
              height: 10,
            ),
            WhiteContainerFilterpage(
              height: 49,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Enter Destination',
                      style: AppStyles.styleMedium16(context).copyWith(
                        color: const Color(0xffA2BDC2),
                      ),
                    ),
                    Row(
                      children: [
                        if (yourLocation != "")
                          Text(
                            yourLocation,
                            style: AppStyles.styleRegular16(context).copyWith(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        GestureDetector(
                            onTap: () {
                              _showAddLocationDialog();
                            },
                            child:
                                SvgPicture.asset(Assets.imagesArrowRightIcon)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            planTripSubTitles(context, 'Choose a date from'),
            const SizedBox(
              height: 10,
            ),
            const WhiteContainerFilterpage(
                height: 49, child: PlanTripChooseDate()),
            const SizedBox(
              height: 32,
            ),
            planTripSubTitles(context, 'Choose a date To'),
            const SizedBox(
              height: 10,
            ),
            const WhiteContainerFilterpage(
                height: 49, child: PlanTripChooseDate()),
            const SizedBox(
              height: 32,
            ),
            planTripSubTitles(context, 'Group size'),
            const SizedBox(
              height: 10,
            ),
            WhiteContainerFilterpage(
              height: 49,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Select group size',
                      style: AppStyles.styleMedium16(context).copyWith(
                        color: const Color(0xffA2BDC2),
                      ),
                    ),
                    Row(
                      children: [
                        if (groupSize != "")
                          Text(
                            groupSize!,
                            style: AppStyles.styleRegular16(context).copyWith(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        GestureDetector(
                            onTap: () {
                              _showGroupSizeDialog();
                            },
                            child:
                                SvgPicture.asset(Assets.imagesArrowRightIcon)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            planTripSubTitles(context, 'Searching for a local guide'),
            const SizedBox(
              height: 10,
            ),
            WhiteContainerFilterpage(
              height: 49,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Select type of guide',
                      style: AppStyles.styleMedium16(context).copyWith(
                        color: const Color(0xffA2BDC2),
                      ),
                    ),
                    Row(
                      children: [
                        if (typeOfGuide != "")
                          Text(
                            typeOfGuide!,
                            style: AppStyles.styleRegular16(context).copyWith(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        GestureDetector(
                            onTap: () {
                              _showTypeOfGuideDialog();
                            },
                            child:
                                SvgPicture.asset(Assets.imagesArrowRightIcon)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text('Field is required',
                  style: AppStyles.styleMedium15(context)),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 42,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 17,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff4A6670),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Plan your trip',
                              style: AppStyles.styleMedium20(context).copyWith(
                                color: const Color(0xffFFFFFF),
                              ),
                            ),
                          ],
                        )),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }

  Padding planTripSubTitles(BuildContext context, String filterSubTitle) {
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
