import 'package:injectable/injectable.dart';
import '../../data/requests/requests.dart';
import '../repository/repository.dart';
import '../../core/base_usecase.dart';
import 'package:dartz/dartz.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/resend_email_verification_success.dart';

@lazySingleton
class ResendEmailVerificationUseCase
    implements
        BaseUseCase<ResendEmailVerificationSuccess,
            ResendEmailVerificationRequest> {
  final Repository _repo;
  ResendEmailVerificationUseCase(this._repo);

  @override
  Future<Either<Failure, ResendEmailVerificationSuccess>> call(
          ResendEmailVerificationRequest params) async =>
      _repo.resendEmailVerification(params);
}
