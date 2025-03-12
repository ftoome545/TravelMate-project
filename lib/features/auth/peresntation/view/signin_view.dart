import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_mate/core/services/get_it_service.dart';
import 'package:travel_mate/features/auth/domain/repos/auth_repo.dart';
import 'package:travel_mate/features/auth/peresntation/cubits/signin_cubit/signin_cubit.dart';
import 'package:travel_mate/features/auth/peresntation/view/widgets/signin_view_body_bloc_consumer.dart';
import '../../../../core/widgets/custom_app_bar.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
          appBar: buildAppBar(context, null),
          body: const SigninViewBodyBlocConsumer()),
    );
  }
}
