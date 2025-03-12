import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_mate/core/helper_functions/build_error_bar.dart';
import 'package:travel_mate/core/widgets/custom_progress_hud.dart';
import 'package:travel_mate/features/auth/peresntation/cubits/signin_cubit/signin_cubit.dart';
import 'package:travel_mate/features/auth/peresntation/view/widgets/signin_view_body.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
        } else if (state is SigninFailure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
            isLoading: state is SigninLoading ? true : false,
            child: const SigninViewBody());
      },
    );
  }
}
