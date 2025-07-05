import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recap_project/core/helpers/spacing.dart';
import 'package:recap_project/core/theming/regex.dart';
import 'package:recap_project/core/widgets/app_text_field.dart';
import 'package:recap_project/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:recap_project/features/sign_up/ui/widgets/already_have_an_account.dart';
import 'package:recap_project/features/sign_up/ui/widgets/password_validation_ui.dart';
import 'package:recap_project/features/sign_up/ui/widgets/phone_number_dropdown.dart';

class SignupTextFields extends StatefulWidget {
  const SignupTextFields({super.key});

  @override
  State<SignupTextFields> createState() => _SignupTextFieldsState();
}

class _SignupTextFieldsState extends State<SignupTextFields> {
  bool isObscureTextPassword = true; // Initial state for password visibility
  bool isObscureTextReEnterPassword = true;
  bool hasValidated = false;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  bool isValidated = false;
  // Initial state for password visibility

  bool startTypingPassword = false; // Initial state for typing
  bool startTypingReEnterPassword = false; // Initial state for typing
  late TextEditingController passwordController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController emailController;
  late TextEditingController phoneNumberController;
  late TextEditingController reEnterPasswordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignupCubit>().passwordController;
    reEnterPasswordController = context
        .read<SignupCubit>()
        .reEnterPasswordController;
    firstNameController = context.read<SignupCubit>().firstNameController;
    lastNameController = context.read<SignupCubit>().lastNameController;
    emailController = context.read<SignupCubit>().emailController;
    passwordController = context.read<SignupCubit>().passwordController;
    phoneNumberController = context.read<SignupCubit>().phoneNumberController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFieldUni(
                controller: firstNameController,
                hintText: "First Name",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter First Name';
                  } else if (!RegexValidation.nameRegex.hasMatch(value)) {
                    return "Enter a Valid Name";
                  }
                  // Add more validation if needed
                  return null;
                },
                textFieldWidth: 150.w,
              ),
              TextFieldUni(
                controller: lastNameController,
                hintText: "Last Name",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Last Name';
                  } else if (!RegexValidation.nameRegex.hasMatch(value)) {
                    return "Enter a Valid Name";
                  }
                  // Add more validation if needed
                  return null;
                },
                textFieldWidth: 150.w,
              ),
            ],
          ),
          VerticalSpacing(10.h),
          TextFieldUni(
            controller: emailController,
            hintText: "Email",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              } else if (!RegexValidation.emailRegex.hasMatch(value)) {
                return "Please Enter a Valid Email";
              }
              // Add more validation if needed
              return null;
            },
          ),
          VerticalSpacing(10.h),

          TextFieldUni(
            controller: phoneNumberController,
            hintText: "Phone Number",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone number';
              }
              // Add more validation if needed
              return null;
            },
          ),
          VerticalSpacing(10.h),
          TextFieldUni(
            hintText: "Password",
            obscureText: isObscureTextPassword,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              if (!isValidated) {
                return 'Please Enter a Valid Password';
              }

              // Add more validation if needed
              return null;
            },
            controller: passwordController,
            onChanged: (value) {
              setState(() {
                if (RegexValidation.hasLowerCase(value!)) {
                  hasLowerCase = true;
                } else {
                  hasLowerCase = false;
                }
                if (RegexValidation.hasMinLength(value)) {
                  hasMinLength = true;
                } else {
                  hasMinLength = false;
                }
                if (RegexValidation.hasNumber(value)) {
                  hasNumber = true;
                } else {
                  hasNumber = false;
                }
                if (RegexValidation.hasSpecialCharacter(value)) {
                  hasSpecialCharacters = true;
                } else {
                  hasSpecialCharacters = false;
                }
                if (RegexValidation.hasUpperCase(value)) {
                  hasUpperCase = true;
                } else {
                  hasUpperCase = false;
                }
                if (hasLowerCase &&
                    hasUpperCase &&
                    hasMinLength &&
                    hasNumber &&
                    hasSpecialCharacters) {
                  isValidated = true;
                } else {
                  isValidated = false;
                }
              });
            },
            suffixIcon: GestureDetector(
              onTap: () {
                // Toggle password visibility
                setState(() {
                  isObscureTextPassword = !isObscureTextPassword;
                });
              },
              child: isObscureTextPassword
                  ? Icon(Icons.visibility_off_outlined)
                  : Icon(Icons.visibility_outlined),
            ),
          ),
          VerticalSpacing(20.h),
          TextFieldUni(
            controller: reEnterPasswordController,
            hintText: "Re-Enter Password",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please re-enter your password';
              } else if (reEnterPasswordController.text !=
                  passwordController.text) {
                return "Passwords doesn't match";
              }
              // Add more validation if needed
              return null;
            },
            obscureText: isObscureTextReEnterPassword,
            suffixIcon: startTypingReEnterPassword
                ? GestureDetector(
                    onTap: () {
                      // Toggle password visibility
                      setState(() {
                        isObscureTextReEnterPassword =
                            !isObscureTextReEnterPassword;
                      });
                    },
                    child: isObscureTextReEnterPassword
                        ? Icon(Icons.visibility_off_outlined)
                        : Icon(Icons.visibility_outlined),
                  )
                : null,
            onChanged: (value) {
              setState(() {
                if (value != "") {
                  startTypingReEnterPassword =
                      true; // Set to true if user has started typing
                } else {
                  startTypingReEnterPassword =
                      false; // Set to false if no text is entered
                }
              });
            },
          ),
          VerticalSpacing(10.h),
          PasswordValidationsUI(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasMinLength: hasMinLength,
            hasNumber: hasNumber,
            hasSpecialCharacters: hasSpecialCharacters,
          ),
        ],
      ),
    );
  }
}
