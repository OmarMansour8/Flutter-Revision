import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recap_project/core/helpers/extensions.dart';
import 'package:recap_project/core/routing/routes.dart';
import 'package:recap_project/core/theming/colors.dart';
import 'package:recap_project/features/login/data/models/login_response_body.dart';
import 'package:recap_project/features/login/logic/cubit/cubit/login_cubit.dart';
import 'package:recap_project/features/login/logic/cubit/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is success || current is Error,
      listener: (context, state) {
        switch (state) {
          case Loading():
            // Show loading indicator
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primaryBlue,
                ),
              ),
            );
            break;
          case success(data: final response):
            // Handle success, navigate or show success message
            context.pop(); // Close the loading dialog
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Login successful: ${response.message}')),
            );
            context.pushNamed(Routes.homeScreen);
            break;
          case Error(error: final errorMessage):
            // Handle error, show error message
            context.pop(); // Close the loading dialog
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error: $errorMessage'),
                duration: Duration(seconds: 5),
              ),
            );
            break;
          default:
            break;
        }
      },
      child: SizedBox.shrink(),
    );
  }
}
