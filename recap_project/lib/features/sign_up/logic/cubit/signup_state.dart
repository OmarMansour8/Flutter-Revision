import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recap_project/features/sign_up/data/model/signup_response_body.dart';
part 'signup_state.freezed.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = SignupLoading;
  const factory SignupState.signupSuccess(SignupResponseBody data) =
      SignupSuccess;
  const factory SignupState.signupError({required String? error}) = SignupError;
}
