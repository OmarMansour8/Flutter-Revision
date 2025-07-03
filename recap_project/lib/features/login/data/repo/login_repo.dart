import 'package:recap_project/core/networking/api_error_handler.dart';
import 'package:recap_project/core/networking/api_result.dart';
import 'package:recap_project/core/networking/api_service.dart';
import 'package:recap_project/features/login/data/models/login_request_body.dart';
import 'package:recap_project/features/login/data/models/login_response_body.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);
  Future<ApiResult<LoginResponseBody>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult<LoginResponseBody>.success(response);
    } catch (e) {
      return ApiResult<LoginResponseBody>.failure(ErrorHandler.handle(e));
    }
  }
}

// This repository handles the login functionality by communicating with the API service.
// It sends the login request and processes the response, returning an ApiResult that indicates success or failure.
// If the request is successful, it returns a LoginResponseBody; if it fails, it
