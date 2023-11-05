part of 'requests.dart';

@JsonSerializable(createFactory: false)
class ResendEmailVerificationRequest {
  final String email;

  ResendEmailVerificationRequest({
    required this.email,
  });

  Map<String, dynamic> toJson() => _$ResendEmailVerificationRequestToJson(this);
}
