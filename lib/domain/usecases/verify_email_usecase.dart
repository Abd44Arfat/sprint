import 'package:injectable/injectable.dart';
import '../../data/requests/requests.dart';
import '../repository/repository.dart';
import '../../core/base_usecase.dart';
import 'package:dartz/dartz.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/otp_verification_success.dart';

@lazySingleton
class VerifyEmailUseCase
    implements BaseUseCase<OtpVerificationSuccess, VerifyEmailRequest> {
  final Repository _repo;
  VerifyEmailUseCase(this._repo);

  @override
  Future<Either<Failure, OtpVerificationSuccess>> call(
          VerifyEmailRequest params) async =>
      _repo.verifyEmail(params);
}
