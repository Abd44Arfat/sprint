class Constants {
  Constants._();

  static const String appName = 'Actvex';
  static const String baseUrl = 'http://www.api.actve-x.com/api/v1/';
  static const Duration apiTimeOut = Duration(seconds: 60);
  static const String signupPath = 'auth/register';
  static const String verifyEmailPath = 'auth/verify-email';
  static const String resendEmailVerificationPath =
      'auth/resend-email-verification';
  static const Duration bottomNavDuration = Duration(milliseconds: 600);

}
