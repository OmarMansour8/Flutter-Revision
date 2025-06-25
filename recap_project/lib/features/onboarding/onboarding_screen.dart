import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recap_project/core/theming/styles.dart';
import 'package:recap_project/features/onboarding/widgets/doc_img_and_text_widget.dart';
import 'package:recap_project/features/onboarding/widgets/doc_logo_and_name_widget.dart';
import 'package:recap_project/features/onboarding/widgets/onboarding_button.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: Column(
            children: [
              DoclogoAndNameWidget(),
              SizedBox(height: 20.h),
              DocImgAndTextWidget(),
              // SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      style: StylesManager.font16Grey,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30.h),
                    OnboardingButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
