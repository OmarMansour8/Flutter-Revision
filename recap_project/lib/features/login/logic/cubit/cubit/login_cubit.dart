import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recap_project/features/login/data/models/login_request_body.dart';
import 'package:recap_project/features/login/data/models/login_response_body.dart';
import 'package:recap_project/features/login/data/repo/login_repo.dart';
import 'package:recap_project/features/login/logic/cubit/cubit/login_state.dart';
import 'package:recap_project/core/networking/api_result.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    debugPrint('🚦 Response runtimeType: ${response.runtimeType}');
    debugPrint('✅ Is Success? ${response is Success<LoginResponseBody>}');
    switch (response) {
      case Success<LoginResponseBody>(data: final success):
        emit(LoginState.success(success));
        break;
      case Failure<LoginResponseBody>(errorHandler: final errorHandler):
        emit(LoginState.error(error: errorHandler.apiErrorModel.message ?? ''));
        break;
    }
  }
}
