// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApiResult<LoginResponseBody> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResult<LoginResponseBody>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiResult<$LoginResponseBody>()';
}


}

/// @nodoc
class $ApiResultCopyWith<LoginResponseBody,$Res>  {
$ApiResultCopyWith(ApiResult<LoginResponseBody> _, $Res Function(ApiResult<LoginResponseBody>) __);
}


/// @nodoc


class Success<LoginResponseBody> implements ApiResult<LoginResponseBody> {
  const Success(this.data);
  

 final  LoginResponseBody data;

/// Create a copy of ApiResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<LoginResponseBody, Success<LoginResponseBody>> get copyWith => _$SuccessCopyWithImpl<LoginResponseBody, Success<LoginResponseBody>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success<LoginResponseBody>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ApiResult<$LoginResponseBody>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<LoginResponseBody,$Res> implements $ApiResultCopyWith<LoginResponseBody, $Res> {
  factory $SuccessCopyWith(Success<LoginResponseBody> value, $Res Function(Success<LoginResponseBody>) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 LoginResponseBody data
});




}
/// @nodoc
class _$SuccessCopyWithImpl<LoginResponseBody,$Res>
    implements $SuccessCopyWith<LoginResponseBody, $Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success<LoginResponseBody> _self;
  final $Res Function(Success<LoginResponseBody>) _then;

/// Create a copy of ApiResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(Success<LoginResponseBody>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LoginResponseBody,
  ));
}


}

/// @nodoc


class Failure<LoginResponseBody> implements ApiResult<LoginResponseBody> {
  const Failure(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of ApiResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<LoginResponseBody, Failure<LoginResponseBody>> get copyWith => _$FailureCopyWithImpl<LoginResponseBody, Failure<LoginResponseBody>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure<LoginResponseBody>&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'ApiResult<$LoginResponseBody>.failure(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<LoginResponseBody,$Res> implements $ApiResultCopyWith<LoginResponseBody, $Res> {
  factory $FailureCopyWith(Failure<LoginResponseBody> value, $Res Function(Failure<LoginResponseBody>) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$FailureCopyWithImpl<LoginResponseBody,$Res>
    implements $FailureCopyWith<LoginResponseBody, $Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure<LoginResponseBody> _self;
  final $Res Function(Failure<LoginResponseBody>) _then;

/// Create a copy of ApiResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(Failure<LoginResponseBody>(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
