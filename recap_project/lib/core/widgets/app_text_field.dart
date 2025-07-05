import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recap_project/core/theming/colors.dart';
import 'package:recap_project/core/theming/styles.dart';

class TextFieldUni extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? disabledBorder;
  final Color? backgroundColor;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final bool? obscureText;
  final double? textFieldWidth;
  final double? textFIeldHeight;
  final TextEditingController? controller;
  final Function(String?) validator;
  final Function(String?)? onChanged;
  const TextFieldUni({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.hintStyle,
    this.obscureText,
    this.controller,
    required this.validator,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.errorBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    this.backgroundColor,
    this.textFieldWidth,
    this.textFIeldHeight,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: textFieldWidth ?? double.maxFinite,
      height: textFIeldHeight ?? 55.h,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          isDense: true,
          contentPadding:
              contentPadding ??
              EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 16.0.h),
          enabledBorder:
              enabledBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide(
                  color: ColorsManager.ligherGrey,
                  width: 1.0,
                ),
              ),
          focusedBorder:
              focusedBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide(
                  color: ColorsManager.primaryBlue,
                  width: 1.0,
                ),
              ),
          errorBorder:
              errorBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide(color: Colors.red, width: 1.0),
              ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: Colors.red, width: 1.0),
          ),
          hintText: hintText,
          fillColor: backgroundColor ?? ColorsManager.moreLigherGrey,
          filled: true,
          suffixIcon: suffixIcon,
          prefix: prefixIcon,
          hintStyle: hintStyle ?? StylesManager.font16GreyRegular,
        ),
        obscureText: obscureText ?? false,
        validator: (value) {
          return validator(value);
        },
        // style: ,
      ),
    );
  }
}
