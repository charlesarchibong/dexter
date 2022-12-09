import 'package:dartz/dartz.dart' hide Task;
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/core/usecase/usecase.dart';
import 'package:dexter_health/src/domain/entities/nurse_assigned_shift.dart';
import 'package:dexter_health/src/domain/repositories/shift_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAssignedShiftHistoryUsecase implements UseCase<List<NurseAssignedShift>, GetAssignedShiftHistoryParams> {
  GetAssignedShiftHistoryUsecase(this.shiftRepository);

  final ShiftRepository shiftRepository;

  @override
  Future<Either<Failure, List<NurseAssignedShift>>> call(GetAssignedShiftHistoryParams params) {
    return shiftRepository.getAssignedShiftHistory(nurseId: params.nurseId);
  }
}

class GetAssignedShiftHistoryParams extends Equatable {
  const GetAssignedShiftHistoryParams({
    this.nurseId,
  });

  final String? nurseId;

  @override
  List<Object?> get props => [nurseId];
}
