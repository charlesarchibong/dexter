import 'package:dartz/dartz.dart';
import 'package:dexter_health/core/errors/dexter_exception.dart';
import 'package:dexter_health/core/errors/failure.dart';
import 'package:firebase_core/firebase_core.dart';

class EitherSafeRunner {
  static Future<Either<Failure, T>> run<T>({required Future<T> Function() safeCallback}) async {
    try {
      return Right(await safeCallback());
    } catch (e) {
      if (e is FirebaseException) {
        return Left(
          Failure.serverError(
            e.message ?? 'Something went wrong, please try again later',
          ),
        );
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
