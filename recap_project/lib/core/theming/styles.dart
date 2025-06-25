import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recap_project/core/theming/colors.dart';

class StylesManager {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.primaryBlue,
  );
  static TextStyle font16Grey = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.grey,
  );
  static TextStyle font16White4000Semibold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
