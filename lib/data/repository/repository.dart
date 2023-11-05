import '../../domain/entities/resend_email_verification_success.dart';
import '../../domain/entities/otp_verification_success.dart';
import '../../domain/entities/signup_success.dart';
import 'package:injectable/injectable.dart';
import 'package:actvex/core/helpers/repository_helpers.dart';
import 'package:actvex/data/datasources/remote_datasource/app_api.dart';
import 'package:actvex/domain/repository/repository.dart';
// ignore: unused_import
import 'package:dartz/dartz.dart';
// ignore: unused_import
import '../../core/network/failure.dart';
// ignore: unused_import
import '../requests/requests.dart';

@Injectable(as: Repository)
class RepositoryImpl implements Repository {
  final AppServiceClient _appServiceClient;
  final RepositoryHelpers _repositoryHelpers;

  RepositoryImpl(this._appServiceClient)
      : _repositoryHelpers = RepositoryHelpers();
  @override
  Future<Either<Failure, SignupSuccess>> signup(
    SignupRequest signupRequest,
  ) async {
    return _repositoryHelpers.callApi<SignupSuccess>(
      () => _appServiceClient.signup(
        signupRequest,
      ),
      statusCode: 201,
    );
  }

  @override
  Future<Either<Failure, OtpVerificationSuccess>> verifyEmail(
    VerifyEmailRequest verifyEmailRequest,
  ) async {
    return _repositoryHelpers.callApi<OtpVerificationSuccess>(
      () => _appServiceClient.verifyEmail(
        verifyEmailRequest,
      ),
      statusCode: 200,
    );
  }

  @override
  Future<Either<Failure, ResendEmailVerificationSuccess>>
      resendEmailVerification(
    ResendEmailVerificationRequest resendEmailVerificationRequest,
  ) async {
    return _repositoryHelpers.callApi<ResendEmailVerificationSuccess>(
      () => _appServiceClient.resendEmailVerification(
        resendEmailVerificationRequest,
      ),
      statusCode: 200,
    );
  }
}
