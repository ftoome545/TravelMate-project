import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/plan_your_trip_box.dart';

class NoTripsCreatedYetScreen extends StatelessWidget {
  const NoTripsCreatedYetScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const PlanYourTripBox(),
          const SizedBox(
            height: 241,
          ),
          Text(
            'My Saved plans',
            style: AppStyles.styleSemiBold25(context).copyWith(
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Text(
                textAlign: TextAlign.center,
                'No trips created yet? Start your first trip now and unlock exciting offers from locals eager to guide you.',
                style: AppStyles.styleRegular16(context)),
          ),
        ],
      ),
    );
  }
}
