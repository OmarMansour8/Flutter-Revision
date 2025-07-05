import 'package:recap_project/core/networking/api_error_handler.dart';
import 'package:recap_project/core/networking/api_result.dart';
import 'package:recap_project/core/networking/api_service.dart';
import 'package:recap_project/features/sign_up/data/model/signup_request_body.dart';
import 'package:recap_project/features/sign_up/data/model/signup_response_body.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);
  Future<ApiResult<SignupResponseBody>> signup(
    SignupRequestBody signupRequestBody,
  ) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
