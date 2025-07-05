import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recap_project/core/helpers/spacing.dart';
import 'package:recap_project/core/theming/colors.dart';
import 'package:recap_project/core/theming/styles.dart';

class PasswordValidationsUI extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidationsUI({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ValidationPoint('At least 1 lowercase letter', hasLowerCase),
        VerticalSpacing(4.h),
        ValidationPoint('At least 1 uppercase letter', hasUpperCase),
        VerticalSpacing(4.h),
        ValidationPoint('At least 1 special character', hasSpecialCharacters),
        VerticalSpacing(4.h),
        ValidationPoint('At least 1 number', hasNumber),
        VerticalSpacing(4.h),
        ValidationPoint('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget ValidationPoint(String text, bool hasValidated) {
    return Row(
      children: [
        HorizontalSpacing(5.w),
        CircleAvatar(backgroundColor: ColorsManager.grey, radius: 2.5),
        HorizontalSpacing(5.w),
        Text(
          text,
          style: StylesManager.font12BlackRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? Colors.green : Colors.black,
          ),
        ),
      ],
    );
  }
}
