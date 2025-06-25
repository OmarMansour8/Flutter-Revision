import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recap_project/core/theming/colors.dart';
import 'package:recap_project/core/theming/styles.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text("Get Started", style: StylesManager.font16White4000Semibold),
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
