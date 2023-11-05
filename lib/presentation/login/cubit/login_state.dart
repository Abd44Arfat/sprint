// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'login_cubit.dart';

class LoginState extends Equatable {
  final Email email;
  final Password password;
  final String? error;
  final bool isSuccess;
  const LoginState({
    this.email = const Email.unvalidated(),
    this.password = const Password.unvalidated(),
    this.error,
    this.isSuccess = false,
  });

  LoginState copyWith(
      {Email? email, Password? password, String? error, bool? isSuccess}) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      error: error,
      isSuccess: isSuccess ?? false,
    );
  }

  @override
  List<Object?> get props {
    return [
      email,
      password,
      error,
      isSuccess,
    ];
  }
}
