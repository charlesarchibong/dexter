import 'package:dartz/dartz.dart';
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/core/usecase/usecase.dart';
import 'package:dexter_health/src/domain/entities/nurse.dart';
import 'package:dexter_health/src/domain/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginUsecase implements UseCase<Nurse, LoginParams> {
  LoginUsecase(this.authRepository);

  final AuthRepository authRepository;

  @override
  Future<Either<Failure, Nurse>> call(LoginParams params) {
    return authRepository.login(params.email, params.password);
  }
}

class LoginParams extends Equatable {
  const LoginParams({required this.email, required this.password});

  final String email;
  final String password;

  @override
  List<Object?> get props => [email, password];
}
