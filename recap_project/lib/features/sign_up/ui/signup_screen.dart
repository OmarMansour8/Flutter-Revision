import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recap_project/core/helpers/spacing.dart';
import 'package:recap_project/core/theming/styles.dart';
import 'package:recap_project/features/login/ui/widgets/email_and_password_textfields.dart';
import 'package:recap_project/features/sign_up/ui/widgets/email_and_password_and_phonenumber_textfields.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Create Account", style: StylesManager.font24BlueBold),
                VerticalSpacing(10.h),
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: StylesManager.font14greyRegular,
                ),
                VerticalSpacing(30.h),
                SignupTextFields(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
