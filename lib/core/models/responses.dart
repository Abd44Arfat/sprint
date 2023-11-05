import '../../domain/entities/resend_email_verification_success.dart';
import '../../domain/entities/otp_verification_success.dart';
import '../../domain/entities/signup_success.dart';
// ignore: unused_import
import '../../app/extensions.dart';
// ignore: unused_import
import 'package:equatable/equatable.dart';

import 'package:json_annotation/json_annotation.dart';

import 'no_data.dart';

part 'responses.g.dart';

part '../../data/responses/signup_success_response.dart';

part '../../data/responses/otp_verification_success_response.dart';

part '../../data/responses/resend_email_verification_success_response.dart';

abstract class DataResponse<T> {
  T toDomain();
}

@JsonSerializable(createToJson: false)
class NoDataResponse implements DataResponse<NoData> {
  const NoDataResponse();

  @override
  NoData toDomain() => const NoData();

  factory NoDataResponse.fromJson(Map<String, dynamic> json) =>
      _$NoDataResponseFromJson(json);
}
