import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:recap_project/core/helpers/extensions.dart';
import 'package:recap_project/core/routing/routes.dart';
import 'package:recap_project/core/theming/styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: "Already have an account? ",
              style: StylesManager.font12BlackRegular,
            ),
            TextSpan(
              text: " Sign In",
              style: StylesManager.font16BlueBold,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushNamed(Routes.loginScreen);
                },
            ),
          ],
        ),
      ),
    );
  }
}
