import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recap_project/core/di/dependency_injection.dart';
import 'package:recap_project/core/routing/app_router.dart';
import 'package:recap_project/doc_app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // make transparent or any color
      statusBarIconBrightness: Brightness.dark, // for dark icons
      statusBarBrightness: Brightness.light, // for iOS
    ),
  );
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
