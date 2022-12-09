import 'package:dartz/dartz.dart';
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/core/usecase/usecase.dart';
import 'package:dexter_health/src/domain/entities/shift.dart';
import 'package:dexter_health/src/domain/repositories/shift_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetShiftsUsecase implements UseCase<List<Shift>, NoParams> {
  GetShiftsUsecase(this.shiftRepository);

  final ShiftRepository shiftRepository;

  @override
  Future<Either<Failure, List<Shift>>> call(NoParams params) {
    return shiftRepository.getShifts();
  }
}
