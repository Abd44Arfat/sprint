import '../entities/resend_email_verification_success.dart';
import '../entities/otp_verification_success.dart';
import '../entities/signup_success.dart';
// ignore: unused_import
import 'package:dartz/dartz.dart';
// ignore: unused_import
import '../../core/network/failure.dart';
// ignore: unused_import
import '../../data/requests/requests.dart';

abstract class Repository {
  Future<Either<Failure, SignupSuccess>> signup(
    SignupRequest signupRequest,
  );
  Future<Either<Failure, OtpVerificationSuccess>> verifyEmail(
    VerifyEmailRequest verifyEmailRequest,
  );
  Future<Either<Failure, ResendEmailVerificationSuccess>>
      resendEmailVerification(
    ResendEmailVerificationRequest resendEmailVerificationRequest,
  );
}
