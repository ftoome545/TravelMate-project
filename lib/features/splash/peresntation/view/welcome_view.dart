import 'package:flutter/material.dart';
import 'package:travel_mate/features/splash/peresntation/view/widgets/welcom_view_body.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  static const routeName = 'Welcome';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomeViewBody(),
    );
  }
}
