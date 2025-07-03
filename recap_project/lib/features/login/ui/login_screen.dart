import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recap_project/core/helpers/extensions.dart';
import 'package:recap_project/core/helpers/spacing.dart';
import 'package:recap_project/core/routing/routes.dart';
import 'package:recap_project/core/theming/styles.dart';
import 'package:recap_project/core/widgets/app_devider.dart';
import 'package:recap_project/core/widgets/app_text_button.dart';
import 'package:recap_project/core/widgets/app_text_field.dart';
import 'package:recap_project/features/login/data/models/login_request_body.dart';
import 'package:recap_project/features/login/logic/cubit/cubit/login_cubit.dart';
import 'package:recap_project/features/login/ui/widgets/dont_have_an_account.dart';
import 'package:recap_project/features/login/ui/widgets/email_and_password_textfields.dart';
import 'package:recap_project/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:recap_project/features/login/ui/widgets/other_signin_options.dart';
import 'package:recap_project/features/login/ui/widgets/terms_and_conditions.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  var obsecureText = true; // Initial state for password visibility
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 30.w,
            vertical: 30.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: StylesManager.font24BlueBold),
                VerticalSpacing(10.h),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: StylesManager.font14greyRegular,
                ),
                VerticalSpacing(30.h),
                EmailAndPasswordTextfields(),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    "Forgot Password?",
                    style: StylesManager.font12BlueRegular,
                  ),
                ),
                VerticalSpacing(30.h),
                appTextButtonUni(
                  buttonText: "Sign in",
                  onPressed: () {
                    validateThenLogin(context);
                  },
                  textStyle: StylesManager.font16WhiteSemibold,
                ),
                VerticalSpacing(30.h),
                OtherSigninOptions(),
                VerticalSpacing(30.h),
                termsAndConditionsText(),
                VerticalSpacing(30.h),
                DontHaveAnAccount(),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    } else {
      // Show a message or handle the validation failure
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please fill in all fields correctly.")),
      );
    }
  }
}
