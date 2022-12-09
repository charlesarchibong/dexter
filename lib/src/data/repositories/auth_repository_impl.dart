import 'package:dartz/dartz.dart';
import 'package:dexter_health/core/errors/dexter_exception.dart';
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/core/utils/either_safe_runner.dart';
import 'package:dexter_health/src/data/data_sources/auth_remote_datasource.dart';
import 'package:dexter_health/src/domain/entities/nurse.dart';
import 'package:dexter_health/src/domain/repositories/auth_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.authRemoteDatasource);

  final AuthRemoteDatasource authRemoteDatasource;

  @override
  Future<Either<Failure, Nurse?>> getCurrentUser({String? id}) async {
    return EitherSafeRunner.run<Nurse?>(
      safeCallback: () => authRemoteDatasource.getCurrentUser(id: id),
    );
  }

  @override
  Future<Either<Failure, Nurse>> login(String email, String password) async {
    try {
      final nurse = await authRemoteDatasource.login(email, password);
      return Right(nurse);
    } catch (e) {
      if (e is FirebaseException) {
        switch (e.code) {
          case 'invalid-email':
            return const Left(Failure.serverError('Invalid email address'));
          case 'user-disabled':
            return const Left(Failure.serverError('User disabled'));
          case 'user-not-found':
            return const Left(Failure.serverError('User not found, please contact the Hospital admin office'));
          case 'wrong-password':
            return const Left(Failure.serverError('Invalid  password'));
          default:
            return Left(
              Failure.serverError(
                e.message ?? 'Something went wrong, please try again later',
              ),
            );
        }
      } else if (e is DexterException) {
        final failure = e.when(
          server: (message) => Failure.serverError(message),
          noInternet: () => const Failure.noInternet(),
          unknown: () => const Failure.unknown(),
        );
        return Left(failure);
      } else {
        return const Left(Failure.unknown());
      }
    }
  }
}
