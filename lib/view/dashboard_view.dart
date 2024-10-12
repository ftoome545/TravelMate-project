import 'package:flutter/material.dart';
import 'package:travel_mate/widgets/adaptive_layout_widget.dart';
import 'package:travel_mate/widgets/mobile_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const SizedBox()),
    );
  }
}
