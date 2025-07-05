import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String name;
  final String email;
  @JsonKey(name: 'phone')
  final String phoneNumber;
  final String gender;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String reEnterPassword;

  SignupRequestBody({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.gender,
    required this.password,
    required this.reEnterPassword,
  });
  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
