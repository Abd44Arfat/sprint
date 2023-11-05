// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoDataResponse _$NoDataResponseFromJson(Map<String, dynamic> json) =>
    NoDataResponse();

SignupSuccessResponse _$SignupSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    SignupSuccessResponse(
      success: json['success'] as bool?,
      message: json['message'] as String?,
    );

OtpVerificationSuccessResponse _$OtpVerificationSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    OtpVerificationSuccessResponse(
      success: json['success'] as bool?,
      message: json['message'] as String?,
    );

ResendEmailVerificationSuccessResponse
    _$ResendEmailVerificationSuccessResponseFromJson(
            Map<String, dynamic> json) =>
        ResendEmailVerificationSuccessResponse(
          success: json['success'] as bool?,
          message: json['message'] as String?,
        );
