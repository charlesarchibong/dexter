import 'package:dartz/dartz.dart' hide Task;
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/core/usecase/usecase.dart';
import 'package:dexter_health/src/domain/repositories/shift_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class MoveTaskToNewShiftUsecase implements UseCase<void, MoveTaskToNewShiftParams> {
  MoveTaskToNewShiftUsecase(this.shiftRepository);

  final ShiftRepository shiftRepository;

  @override
  Future<Either<Failure, void>> call(MoveTaskToNewShiftParams params) {
    return shiftRepository.moveTaskToNewShift(assignedShiftId: params.assignedShiftId, taskIds: params.taskIds);
  }
}

class MoveTaskToNewShiftParams extends Equatable {
  const MoveTaskToNewShiftParams({
    required this.assignedShiftId,
    required this.taskIds,
  });

  final String assignedShiftId;
  final List<String> taskIds;

  @override
  List<Object?> get props => [assignedShiftId, taskIds];
}
