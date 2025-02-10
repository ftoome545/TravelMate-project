import 'package:flutter/material.dart';
import 'package:travel_mate/features/auth/peresntation/view/widgets/login_view_body.dart';
import '../../../../core/widgets/custom_app_bar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context, null), body: const LoginViewBody());
  }
}
