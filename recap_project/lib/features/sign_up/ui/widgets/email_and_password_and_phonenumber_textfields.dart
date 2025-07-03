import 'package:flutter/material.dart';
import 'package:recap_project/core/helpers/spacing.dart';
import 'package:recap_project/core/widgets/app_text_field.dart';

class SignupTextFields extends StatefulWidget {
  const SignupTextFields({super.key});

  @override
  State<SignupTextFields> createState() => _SignupTextFieldsState();
}

class _SignupTextFieldsState extends State<SignupTextFields> {
  bool isObscureText = true; // Initial state for password visibility
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldUni(
          hintText: "Email",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your email';
            }
            // Add more validation if needed
            return null;
          },
        ),
        VerticalSpacing(20.h),
        TextFieldUni(
          hintText: "Password",
          obscureText: true,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            // Add more validation if needed
            return null;
          },
          suffixIcon: GestureDetector(
            onTap: () {
              // Toggle password visibility
              setState(() {
                isObscureText = !isObscureText;
              });
            },
            child: isObscureText
                ? Icon(Icons.visibility_off_outlined)
                : Icon(Icons.visibility_outlined),
          ),
        ),
      ],
    );
  }
}
