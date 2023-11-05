part of 'requests.dart';

@JsonSerializable(createFactory: false)
class SignupRequest {
  final String name;
  final String email;
  final String password;
  final String passwordConfirm;

  SignupRequest({
    required this.name,
    required this.email,
    required this.password,
    required this.passwordConfirm,
  });

  Map<String, dynamic> toJson() => _$SignupRequestToJson(this);
}
