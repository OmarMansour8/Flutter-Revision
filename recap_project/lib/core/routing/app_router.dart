import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recap_project/core/di/dependency_injection.dart';
import 'package:recap_project/core/routing/routes.dart';
import 'package:recap_project/features/home/ui/home_screen.dart';
import 'package:recap_project/features/login/logic/cubit/cubit/login_cubit.dart';
import 'package:recap_project/features/login/ui/login_screen.dart';
import 'package:recap_project/features/onboarding/onboarding_screen.dart';
import 'package:recap_project/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:recap_project/features/sign_up/ui/signup_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => Onboardingscreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const loginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.signuoScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: SignupScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
