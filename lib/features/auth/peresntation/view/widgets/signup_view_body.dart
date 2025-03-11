import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_mate/constants.dart';
import 'package:travel_mate/core/utils/app_colors.dart';
import 'package:travel_mate/core/widgets/custom_button.dart';
import 'package:travel_mate/core/widgets/custom_text_form_field.dart';
import 'package:travel_mate/core/widgets/password_feild.dart';
import 'package:travel_mate/features/auth/peresntation/cubits/signup_cubit/signup_cubit.dart';
import 'package:travel_mate/features/auth/peresntation/view/widgets/have_an_account_widget.dart';
import 'package:travel_mate/utils/app_styles.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String userName, email, password;
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
                "Sign up now",
                style: AppStyles.styleSemiBold30(context),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Please fill the detail and create account",
                style: AppStyles.styleRegular16(context),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  userName = value!;
                },
                textInputType: TextInputType.name,
                hintText: 'Full name',
              ),
              const SizedBox(
                height: 24,
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
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Password must be 8 Character",
                    style: AppStyles.styleSemiBold16(context)
                        .copyWith(color: AppColors.lightPrimaryColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              CustomButton(
                  title: "Sign up",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context
                          .read<SignupCubit>()
                          .createUserWithEmailAndPassword(
                              email: email, password: password, name: userName);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                    }
                  }),
              const SizedBox(
                height: 33,
              ),
              const HaveAnAccountWidget(),
              const SizedBox(
                height: 33,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
