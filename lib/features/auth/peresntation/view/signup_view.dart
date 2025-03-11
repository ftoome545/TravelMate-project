import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_mate/core/services/get_it_service.dart';
import 'package:travel_mate/core/widgets/custom_app_bar.dart';
import 'package:travel_mate/features/auth/domain/repos/auth_repo.dart';
import 'package:travel_mate/features/auth/peresntation/cubits/signup_cubit/signup_cubit.dart';
import 'package:travel_mate/features/auth/peresntation/view/widgets/signup_view_body_bloc_consumer.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(context, null),
        body: const SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
