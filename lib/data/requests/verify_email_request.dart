part of 'requests.dart';

@JsonSerializable(createFactory: false)
class VerifyEmailRequest {
  final String otp;

  VerifyEmailRequest({
    required this.otp,
  });

  Map<String, dynamic> toJson() => _$VerifyEmailRequestToJson(this);
}
