// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequestBody _$SignupRequestBodyFromJson(Map<String, dynamic> json) =>
    SignupRequestBody(
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phone'] as String,
      gender: json['gender'] as String,
      password: json['password'] as String,
      reEnterPassword: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$SignupRequestBodyToJson(SignupRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phoneNumber,
      'gender': instance.gender,
      'password': instance.password,
      'password_confirmation': instance.reEnterPassword,
    };
