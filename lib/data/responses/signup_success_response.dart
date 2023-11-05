part of '../../core/models/responses.dart';

@JsonSerializable(createToJson: false)
class SignupSuccessResponse extends Equatable
    implements DataResponse<SignupSuccess> {
  final bool? success;
  final String? message;

  const SignupSuccessResponse({
    required this.success,
    required this.message,
  });

  @override
  SignupSuccess toDomain() {
    return SignupSuccess(
        success: success.orFalse(), message: message.orEmpty());
  }

  @override
  List<Object?> get props => [success, message];

  factory SignupSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupSuccessResponseFromJson(json);
}
