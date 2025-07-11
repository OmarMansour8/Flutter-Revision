import 'package:flutter/material.dart';
import 'package:recap_project/core/routing/routes.dart';
import 'package:recap_project/features/home/ui/home_screen.dart';
import 'package:recap_project/features/login/ui/login_screen.dart';
import 'package:recap_project/features/onboarding/onboarding_screen.dart';
import 'package:recap_project/features/sign_up/ui/signup_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => Onboardingscreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => loginScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.signuoScreen:
        return MaterialPageRoute(builder: (_) => SignupScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
