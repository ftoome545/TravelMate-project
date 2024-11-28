import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/created_trips_list_view.dart';
import 'package:travel_mate/widgets/plan_your_trip_box.dart';

class CreatedTripsScreen extends StatelessWidget {
  const CreatedTripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: PlanYourTripBox()),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                textAlign: TextAlign.center,
                'My plans',
                style: AppStyles.styleSemiBold18.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 15,
              ),
            ),
            const CreatedTripsListView(),
          ],
        ));
  }
}
