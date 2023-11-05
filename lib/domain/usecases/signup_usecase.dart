import 'package:injectable/injectable.dart';
import '../../data/requests/requests.dart';
import '../repository/repository.dart';
import '../../core/base_usecase.dart';
import 'package:dartz/dartz.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/signup_success.dart';

@lazySingleton
class SignupUseCase implements BaseUseCase<SignupSuccess, SignupRequest> {
  final Repository _repo;
  SignupUseCase(this._repo);

  @override
  Future<Either<Failure, SignupSuccess>> call(SignupRequest params) async =>
      _repo.signup(params);
}
