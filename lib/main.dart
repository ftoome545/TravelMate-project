import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:travel_mate/core/helper_functions/on_generate_routes.dart';
import 'package:travel_mate/core/services/shared_preferences_ton.dart';
import 'package:travel_mate/core/utils/app_colors.dart';
import 'package:travel_mate/features/splash/peresntation/view/splash_view.dart';
import 'package:travel_mate/firebase_options.dart';
import 'package:travel_mate/model/guide_box_data.dart';
// import 'package:travel_mate/view/dashboard_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Prefs.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(DevicePreview(
        enabled: true,
        builder: (context) {
          return const TravelMate();
        }));
  });
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
        // home: const DashboardView()
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        ),
        onGenerateRoute: onGenerateRoutes,
        initialRoute: SplashView.routeName,
      ),
    );
  }
}
