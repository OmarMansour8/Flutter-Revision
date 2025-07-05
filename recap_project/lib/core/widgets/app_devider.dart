import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recap_project/core/theming/colors.dart';

class DividerUni extends StatelessWidget {
  final double? paddingLeft;
  final double? paddingRight;
  final double? dividerThickness;

  const DividerUni({
    super.key,
    this.paddingLeft,
    this.paddingRight,
    this.dividerThickness,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: ColorsManager.deviderColor,
      thickness: dividerThickness ?? 1.0.h,
      height: 5.0.h,
      indent: paddingLeft ?? 5.0.w,
      endIndent: paddingRight ?? 5.0.w,
    );
  }
}
