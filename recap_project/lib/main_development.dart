import 'package:flutter/material.dart';
import 'package:recap_project/core/di/dependency_injection.dart';
import 'package:recap_project/core/routing/app_router.dart';
import 'package:recap_project/doc_app.dart';

void main() {
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
