part of '../../core/models/responses.dart';

@JsonSerializable(createToJson: false)
class ResendEmailVerificationSuccessResponse extends Equatable
    implements DataResponse<ResendEmailVerificationSuccess> {
  final bool? success;
  final String? message;

  const ResendEmailVerificationSuccessResponse({
    required this.success,
    required this.message,
  });

  @override
  ResendEmailVerificationSuccess toDomain() {
    return ResendEmailVerificationSuccess(
        success: success.orFalse(), message: message.orEmpty());
  }

  @override
  List<Object?> get props => [success, message];

  factory ResendEmailVerificationSuccessResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ResendEmailVerificationSuccessResponseFromJson(json);
}
