import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_mate/model/guide_box_data.dart';
import 'package:travel_mate/view/dashboard_view.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      builder: (context) {
        return const TravelMate();
      }));
}

class TravelMate extends StatelessWidget {
  const TravelMate({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GuideBoxData(),
      child: MaterialApp(
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          home: const DashboardView()),
    );
  }
}
