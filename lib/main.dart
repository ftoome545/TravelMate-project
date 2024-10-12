import 'package:flutter/material.dart';
import 'package:travel_mate/view/dashboard_view.dart';

void main() {
  runApp(const TravelMate());
}

class TravelMate extends StatelessWidget {
  const TravelMate({super.key});

  @override
  Widget build(BuildContext context) {
    return const DashboardView();
  }
}
