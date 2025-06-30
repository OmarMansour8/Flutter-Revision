import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recap_project/core/helpers/extensions.dart';
import 'package:recap_project/core/helpers/spacing.dart';
import 'package:recap_project/core/routing/routes.dart';
import 'package:recap_project/core/theming/styles.dart';
import 'package:recap_project/core/widgets/app_devider.dart';
import 'package:recap_project/core/widgets/app_text_button.dart';
import 'package:recap_project/core/widgets/app_text_field.dart';
import 'package:recap_project/features/login/ui/widgets/dont_have_an_account.dart';
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
                TextFieldUni(hintText: "Email"),
                VerticalSpacing(20.h),
                TextFieldUni(
                  hintText: "Password",
                  obscureText: obsecureText,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        // Toggle password visibility
                        obsecureText = !obsecureText;
                      });
                    },
                    child: Icon(
                      obsecureText
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                  ),
                ),
                VerticalSpacing(20.h),
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
                    context.pushNamed(Routes.homeScreen);
                  },
                  textStyle: StylesManager.font16WhiteSemibold,
                ),
                VerticalSpacing(30.h),
                OtherSigninOptions(),
                VerticalSpacing(30.h),
                termsAndConditionsText(),
                VerticalSpacing(30.h),
                DontHaveAnAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
