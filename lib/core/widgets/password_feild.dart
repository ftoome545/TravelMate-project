import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_mate/core/utils/app_colors.dart';
import 'package:travel_mate/core/widgets/custom_text_form_field.dart';

class PasswordFeild extends StatefulWidget {
  const PasswordFeild({
    super.key,
    this.onSaved,
  });

  final void Function(String?)? onSaved;

  @override
  State<PasswordFeild> createState() => _PasswordFeildState();
}

class _PasswordFeildState extends State<PasswordFeild> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
      onSaved: widget.onSaved,
      suffixIcon: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child: obscureText
            ? const Icon(
                Icons.remove_red_eye_outlined,
                color: AppColors.primaryColor,
              )
            : const Icon(
                Icons.visibility_off,
                color: AppColors.primaryColor,
              ),
      ),
      textInputType: TextInputType.visiblePassword,
      hintText: 'Password',
    );
  }
}
