import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/languages_and_activites_choose.dart';
import 'package:travel_mate/widgets/plan_trip_choose_date.dart';
import 'package:travel_mate/widgets/plan_trip_enter_destination.dart';
import 'package:travel_mate/widgets/white_container_filter_page.dart';

class PlanYourTripScreen extends StatelessWidget {
  const PlanYourTripScreen({super.key});

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
            const WhiteContainerFilterpage(
                height: 49, child: PlanTripEnterDestination()),
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
              child: LanguagesAndActivitesChoose(
                  title: 'Select group size', onTap: () {}),
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
              child: LanguagesAndActivitesChoose(
                  title: 'Select type of guide', onTap: () {}),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text('Field is required',
                  style: AppStyles.styleMedium12(context)),
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
