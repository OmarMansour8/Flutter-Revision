import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recap_project/core/theming/styles.dart';

class DoclogoAndNameWidget extends StatelessWidget {
  const DoclogoAndNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/doc_logo.svg'),
        SizedBox(width: 10.w),
        Text("docdoc", style: StylesManager.font24Black700Weight),
      ],
    );
  }
}
