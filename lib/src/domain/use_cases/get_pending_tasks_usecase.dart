import 'package:dartz/dartz.dart' hide Task;
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/core/usecase/usecase.dart';
import 'package:dexter_health/src/domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetPendingTasksUsecase implements UseCase<List<Task>, GetPendingTasksParams> {
  GetPendingTasksUsecase(this.shiftRepository);

  final ShiftRepository shiftRepository;

  @override
  Future<Either<Failure, List<Task>>> call(GetPendingTasksParams params) {
    return shiftRepository.getPendingTasks(assignedShiftId: params.assignedShiftId);
  }
}

class GetPendingTasksParams extends Equatable {
  const GetPendingTasksParams({required this.assignedShiftId});

  final String assignedShiftId;

  @override
  List<Object?> get props => [assignedShiftId];
}
