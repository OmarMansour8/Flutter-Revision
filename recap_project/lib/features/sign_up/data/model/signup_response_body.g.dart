// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponseBody _$SignupResponseBodyFromJson(Map<String, dynamic> json) =>
    SignupResponseBody(
      message: json['message'] as String,
      userData: json['userData'] == null
          ? null
          : UserData.fromJson(json['userData'] as Map<String, dynamic>),
      code: (json['code'] as num).toInt(),
      status: json['status'] as bool,
    );

Map<String, dynamic> _$SignupResponseBodyToJson(SignupResponseBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'userData': instance.userData,
      'status': instance.status,
      'code': instance.code,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
  token: json['token'] as String,
  userName: json['username'] as String,
);

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
  'token': instance.token,
  'username': instance.userName,
};
