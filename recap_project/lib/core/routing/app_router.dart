import 'package:flutter/material.dart';
import 'package:recap_project/core/routing/routes.dart';
import 'package:recap_project/features/login/ui/widgets/login_scren.dart';
import 'package:recap_project/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => Onboardingscreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => loginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
