import 'package:dartz/dartz.dart';
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/src/domain/entities/nurse.dart';

abstract class AuthRepository {
  Future<Either<Failure, Nurse>> login(String email, String password);
  Future<Either<Failure, Nurse?>> getCurrentUser({String? id});
}
