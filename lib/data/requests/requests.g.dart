// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$SignupRequestToJson(SignupRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'passwordConfirm': instance.passwordConfirm,
    };

Map<String, dynamic> _$VerifyEmailRequestToJson(VerifyEmailRequest instance) =>
    <String, dynamic>{
      'otp': instance.otp,
    };

Map<String, dynamic> _$ResendEmailVerificationRequestToJson(
        ResendEmailVerificationRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
    };
