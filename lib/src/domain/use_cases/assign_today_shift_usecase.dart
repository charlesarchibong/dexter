import 'package:dartz/dartz.dart';
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/core/usecase/usecase.dart';
import 'package:dexter_health/src/domain/entities/nurse_assigned_shift.dart';
import 'package:dexter_health/src/domain/repositories/shift_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AssignTodayShiftUsecase implements UseCase<void, AssignTodayShiftParams> {
  AssignTodayShiftUsecase(this.shiftRepository);

  final ShiftRepository shiftRepository;

  @override
  Future<Either<Failure, void>> call(AssignTodayShiftParams params) {
    return shiftRepository.assignTodayShift(nurseAssignedShift: params.nurseAssignedShift);
  }
}

class AssignTodayShiftParams extends Equatable {
  const AssignTodayShiftParams({required this.nurseAssignedShift});

  final NurseAssignedShift nurseAssignedShift;

  @override
  List<Object?> get props => [nurseAssignedShift];
}
