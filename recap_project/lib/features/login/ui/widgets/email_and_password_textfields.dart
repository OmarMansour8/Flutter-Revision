import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recap_project/core/helpers/spacing.dart';
import 'package:recap_project/core/widgets/app_text_field.dart';
import 'package:recap_project/features/login/logic/cubit/cubit/login_cubit.dart';

class EmailAndPasswordTextfields extends StatefulWidget {
  const EmailAndPasswordTextfields({super.key});

  @override
  State<EmailAndPasswordTextfields> createState() =>
      _EmailAndPasswordTextfieldsState();
}

class _EmailAndPasswordTextfieldsState
    extends State<EmailAndPasswordTextfields> {
  bool obsecureText = true;
  TextEditingController? passwordController;

  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          TextFieldUni(
            hintText: "Email",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          VerticalSpacing(20.h),
          TextFieldUni(
            hintText: "Password",
            obscureText: obsecureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  // Toggle password visibility
                  obsecureText = !obsecureText;
                });
              },
              child: Icon(
                obsecureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
            },
            controller: context.read<LoginCubit>().passwordController,
          ),
          VerticalSpacing(20.h),
        ],
      ),
    );
  }
}
