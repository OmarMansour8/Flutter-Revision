import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recap_project/core/theming/styles.dart';

class DocImgAndTextWidget extends StatelessWidget {
  const DocImgAndTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/svgs/doc_logo_low_obacity.svg"),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.14, 0.4],
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
            ),
          ),
          child: Image.asset("assets/images/doc_background_image.png"),
        ),
        Positioned(
          bottom: 0.h,
          left: 20,
          right: 20,

          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Text(
              "Best Doctor Appointment App",
              style: StylesManager.font32BlueBold.copyWith(height: 1.2),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
