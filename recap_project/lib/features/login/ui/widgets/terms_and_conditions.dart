import 'package:flutter/material.dart';
import 'package:recap_project/core/theming/styles.dart';

class termsAndConditionsText extends StatelessWidget {
  const termsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,

      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging , you agree to our ",
            style: StylesManager.font11LighterGreyRegular,
          ),
          TextSpan(
            text: "Terms & Conditions",
            style: StylesManager.font12BlackBold,
          ),
          TextSpan(
            text: " and ",
            style: StylesManager.font11LighterGreyRegular,
          ),
          TextSpan(
            text: "Privacy Policy",
            style: StylesManager.font12BlackBold,
          ),
        ],
      ),
    );
  }
}
