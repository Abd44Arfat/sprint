part of '../../core/models/responses.dart';

@JsonSerializable(createToJson: false)
class OtpVerificationSuccessResponse extends Equatable
    implements DataResponse<OtpVerificationSuccess> {
  final bool? success;
  final String? message;

  const OtpVerificationSuccessResponse({
    required this.success,
    required this.message,
  });

  @override
  OtpVerificationSuccess toDomain() {
    return OtpVerificationSuccess(
        success: success.orFalse(), message: message.orEmpty());
  }

  @override
  List<Object?> get props => [success, message];

  factory OtpVerificationSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$OtpVerificationSuccessResponseFromJson(json);
}
