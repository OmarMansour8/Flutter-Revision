import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recap_project/core/helpers/extensions.dart';
import 'package:recap_project/core/routing/routes.dart';
import 'package:recap_project/core/theming/colors.dart';
import 'package:recap_project/core/theming/styles.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(
          Routes.loginScreen,
        ); // Assuming you have a named route for login
      },
      child: Text("Get Started", style: StylesManager.font16WhiteSemibold),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          ColorsManager.primaryBlue,
        ),
        // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
        ),
        minimumSize: WidgetStateProperty.all(Size(double.infinity, 52.h)),
      ),
    );
  }
}
