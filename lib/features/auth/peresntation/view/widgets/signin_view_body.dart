import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/constants.dart';
import 'package:travel_mate/core/utils/app_colors.dart';
import 'package:travel_mate/core/widgets/custom_button.dart';
import 'package:travel_mate/core/widgets/custom_text_form_field.dart';
import 'package:travel_mate/core/widgets/password_feild.dart';
import 'package:travel_mate/features/auth/peresntation/cubits/signin_cubit/signin_cubit.dart';
import 'package:travel_mate/features/auth/peresntation/view/widgets/dont_have_an_account_widget.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String email, password;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 24,
              ),
              Text(
                "Sign in now",
                style: AppStyles.styleSemiBold30(context),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Please Sign in to continue our app",
                style: AppStyles.styleRegular16(context),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                textInputType: TextInputType.emailAddress,
                hintText: 'Email',
              ),
              const SizedBox(
                height: 24,
              ),
              PasswordFeild(
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: AppStyles.styleSemiBold16(context)
                        .copyWith(color: AppColors.primaryColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              CustomButton(
                  title: "Sign in",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context.read<SigninCubit>().signInWithEmailAndPassword(
                          email: email, password: password);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  }),
              const SizedBox(
                height: 33,
              ),
              const DontHaveAnAccountWidget(),
              const SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: SvgPicture.asset(Assets.imagesFacebookIcon),
                    onPressed: () {
                      context.read<SigninCubit>().authRepo.signInWithFacebook();
                    },
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  IconButton(
                      icon: SvgPicture.asset(Assets.imagesGoogleIcon),
                      onPressed: () {
                        context.read<SigninCubit>().authRepo.signInWithGoogle();
                      }),
                  const SizedBox(
                    width: 24,
                  ),
                  IconButton(
                    icon: SvgPicture.asset(Assets.imagesXIcon),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
