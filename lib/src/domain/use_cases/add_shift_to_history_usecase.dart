import 'package:dartz/dartz.dart' hide Task;
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/core/usecase/usecase.dart';
import 'package:dexter_health/src/domain/entities/nurse_assigned_shift.dart';
import 'package:dexter_health/src/domain/repositories/shift_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AddShiftToHistoryUsecase implements UseCase<void, AddShiftToHistoryParams> {
  AddShiftToHistoryUsecase(this.shiftRepository);

  final ShiftRepository shiftRepository;

  @override
  Future<Either<Failure, void>> call(AddShiftToHistoryParams params) {
    return shiftRepository.addShiftToHistory(nurseAssignedShift: params.nurseAssignedShift);
  }
}

class AddShiftToHistoryParams extends Equatable {
  const AddShiftToHistoryParams({
    required this.nurseAssignedShift,
  });

  final NurseAssignedShift nurseAssignedShift;

  @override
  List<Object?> get props => [nurseAssignedShift];
}
