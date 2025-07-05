import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recap_project/core/helpers/extensions.dart';
import 'package:recap_project/core/networking/api_result.dart';
import 'package:recap_project/core/routing/routes.dart';
import 'package:recap_project/core/theming/colors.dart';
import 'package:recap_project/features/login/logic/cubit/cubit/login_state.dart';
import 'package:recap_project/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:recap_project/features/sign_up/logic/cubit/signup_state.dart';

class SignupBlockListener extends StatelessWidget {
  const SignupBlockListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is Loading ||
          current is SignupSuccess ||
          current is SignupError,
      listener: (context, state) {
        switch (state) {
          case Loading():
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primaryBlue,
                ),
              ),
            );
            break;
          case SignupSuccess(data: final response):
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Login successful: ${response.message}')),
            );
            context.pushNamed(Routes.homeScreen);
            break;

          case SignupError(error: final errorMessage):
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
        // TODO: implement listener
      },
      child: const SizedBox.shrink(),
    );
  }
}
