import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recap_project/core/networking/api_error_handler.dart';
import 'package:recap_project/core/networking/api_result.dart';
import 'package:recap_project/features/sign_up/data/model/signup_request_body.dart';
import 'package:recap_project/features/sign_up/data/model/signup_response_body.dart';
import 'package:recap_project/features/sign_up/data/repo/signup_repo.dart';
import 'package:recap_project/features/sign_up/logic/cubit/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(SignupState.initial());
  final formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController reEnterPasswordController = TextEditingController();
  @override
  Future<void> close() {
    passwordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    reEnterPasswordController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    return super.close();
  }

  void emitSignupState() async {
    emit(const SignupState.loading());
    var response = await _signupRepo.signup(
      SignupRequestBody(
        name: firstNameController.text + " " + lastNameController.text,
        email: emailController.text,
        phoneNumber: phoneNumberController.text,
        gender: "0",
        password: passwordController.text,
        reEnterPassword: reEnterPasswordController.text,
      ),
    );
    switch (response) {
      case Success<SignupResponseBody>(data: final data):
        emit(SignupState.signupSuccess(data));
        break;
      case Failure<SignupResponseBody>(errorHandler: final errorHandler):
        emit(
          SignupState.signupError(error: errorHandler.apiErrorModel.message),
        );
        break;
    }
  }
}
