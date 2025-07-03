import 'package:dio/dio.dart';
import 'package:recap_project/core/networking/api_constants.dart';
import 'package:recap_project/features/login/data/models/login_request_body.dart';
import 'package:recap_project/features/login/data/models/login_response_body.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(@Body() LoginRequestBody loginRequestBody);
}
