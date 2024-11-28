import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_mate/model/created_trips_model.dart';
import 'package:travel_mate/widgets/created_trips_box.dart';

class CreatedTripsListView extends StatelessWidget {
  const CreatedTripsListView({super.key});

  static List items = [
    CreatedTripsModel(
        destination: 'Taif',
        fromDate: DateTime(2024, 11, 28),
        toDate: DateTime(2024, 12, 5),
        groupSize: 'Just Me',
        typeOfGuide: 'Female'),
    CreatedTripsModel(
        destination: 'Riydh',
        fromDate: DateTime(2024, 11, 28),
        toDate: DateTime(2024, 12, 5),
        groupSize: 'Two people',
        typeOfGuide: 'male'),
    CreatedTripsModel(
        destination: 'Jeddah',
        fromDate: DateTime(2024, 11, 28),
        toDate: DateTime(2024, 12, 5),
        groupSize: 'More Then Three',
        typeOfGuide: 'Female'),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        // shrinkWrap: false,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: CreatedTripsBox(
              createdTripsModel: items[index],
            ),
          );
        });
  }
}
