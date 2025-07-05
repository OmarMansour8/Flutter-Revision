import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recap_project/core/theming/colors.dart';
import 'package:recap_project/core/theming/styles.dart';

class TextFieldUni extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final bool? obscureText;
  const TextFieldUni({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.hintStyle,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsetsDirectional.symmetric(
          horizontal: 12.0.w,
          vertical: 16.0.h,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: ColorsManager.ligherGrey, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: ColorsManager.primaryBlue, width: 1.0),
        ),
        hintText: hintText,
        fillColor: ColorsManager.moreLigherGrey,
        filled: true,
        suffixIcon: suffixIcon,
        hintStyle: hintStyle ?? StylesManager.font16GreyRegular,
      ),
      obscureText: obscureText ?? false,
      // style: ,
    );
  }
}
