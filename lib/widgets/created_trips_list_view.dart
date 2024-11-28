import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_mate/widgets/created_trips_box.dart';

class CreatedTripsListView extends StatelessWidget {
  const CreatedTripsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        // shrinkWrap: false,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: CreatedTripsBox(),
          );
        });
  }
}
