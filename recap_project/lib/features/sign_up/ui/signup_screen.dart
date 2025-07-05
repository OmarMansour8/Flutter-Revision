import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recap_project/core/helpers/spacing.dart';
import 'package:recap_project/core/theming/styles.dart';
import 'package:recap_project/core/widgets/app_text_button.dart';
import 'package:recap_project/features/login/ui/widgets/email_and_password_textfields.dart';
import 'package:recap_project/features/login/ui/widgets/other_signin_options.dart';
import 'package:recap_project/features/sign_up/data/model/signup_request_body.dart';
import 'package:recap_project/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:recap_project/features/sign_up/ui/widgets/already_have_an_account.dart'
    show AlreadyHaveAnAccount;
import 'package:recap_project/features/sign_up/ui/widgets/email_and_password_and_phonenumber_textfields.dart';
import 'package:recap_project/features/sign_up/ui/widgets/password_validation_ui.dart';
import 'package:recap_project/features/sign_up/ui/widgets/signup_block_listener.dart';

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
                  style: StylesManager.font11LighterGreyRegular,
                ),
                VerticalSpacing(20.h),
                SignupTextFields(),
                VerticalSpacing(20.h),
                appTextButtonUni(
                  buttonText: "Sign up",
                  onPressed: () {
                    validateThenSignup(context);
                  },
                  textStyle: StylesManager.font16WhiteSemibold,
                ),
                VerticalSpacing(20.h),
                OtherSigninOptions(),
                VerticalSpacing(20.h),
                AlreadyHaveAnAccount(),
                SignupBlockListener(),
                // OtherSigninOptions(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupState();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please fill in all fields correctly.")),
      );
    }
  }
}
