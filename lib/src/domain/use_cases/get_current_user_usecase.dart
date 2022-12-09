import 'package:dartz/dartz.dart';
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/core/usecase/usecase.dart';
import 'package:dexter_health/src/domain/entities/nurse.dart';
import 'package:dexter_health/src/domain/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCurrentUserUsecase implements UseCase<Nurse?, GetCurrentUserParams> {
  GetCurrentUserUsecase(this.authRepository);

  final AuthRepository authRepository;

  @override
  Future<Either<Failure, Nurse?>> call(GetCurrentUserParams params) {
    return authRepository.getCurrentUser(id: params.id);
  }
}

class GetCurrentUserParams extends Equatable {
  const GetCurrentUserParams({this.id});

  final String? id;

  @override
  List<Object?> get props => [id];
}
