import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recap_project/core/helpers/spacing.dart';
import 'package:recap_project/core/theming/colors.dart';
import 'package:recap_project/core/theming/styles.dart';
import 'package:recap_project/core/widgets/app_devider.dart';

class OtherSigninOptions extends StatelessWidget {
  const OtherSigninOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: DividerUni()),
            Text("or sign in with", style: StylesManager.font14greyRegular),
            Expanded(child: DividerUni()),
          ],
        ),
        VerticalSpacing(20.0.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                // Handle Google Sign-In
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  ColorsManager.signInOptionsBackground,
                ),
                shape: MaterialStateProperty.all(CircleBorder()),
                fixedSize: MaterialStateProperty.all(Size(60.w, 60.h)),
              ),
              child: Image.asset(
                "assets/images/google.png",
                fit: BoxFit.contain,
              ),
            ),
            TextButton(
              onPressed: () {
                // Handle Google Sign-In
              },
              child: Image.asset(
                "assets/images/facebook.png",
                fit: BoxFit.contain,
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  ColorsManager.signInOptionsBackground,
                ),
                shape: MaterialStateProperty.all(CircleBorder()),
                fixedSize: MaterialStateProperty.all(Size(60.w, 60.h)),
              ),
            ),
            TextButton(
              onPressed: () {
                // Handle Google Sign-In
              },
              child: Image.asset("assets/images/ios.png", fit: BoxFit.contain),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  ColorsManager.signInOptionsBackground,
                ),
                shape: MaterialStateProperty.all(CircleBorder()),
                fixedSize: MaterialStateProperty.all(Size(60.w, 60.h)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
