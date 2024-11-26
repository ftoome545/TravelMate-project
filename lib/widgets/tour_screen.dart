import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/created_trips_screen.dart';
import 'package:travel_mate/widgets/no_trips_created_yet_screen.dart';

class TourScreen extends StatelessWidget {
  const TourScreen({super.key, required this.hasTrip});

  final bool hasTrip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Trips',
          style: AppStyles.styleMedium20,
        ),
        centerTitle: true,
      ),
      body: hasTrip
          ? const CreatedTripsScreen()
          : const NoTripsCreatedYetScreen(),
    );
  }
}
