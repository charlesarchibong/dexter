import 'package:dartz/dartz.dart';
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/core/usecase/usecase.dart';
import 'package:dexter_health/src/domain/repositories/shift_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetTasksUsecase implements UseCase<void, GetTasksParams> {
  GetTasksUsecase(this.shiftRepository);

  final ShiftRepository shiftRepository;

  @override
  Future<Either<Failure, void>> call(GetTasksParams params) {
    return shiftRepository.getTasks(assignedShiftId: params.assignedShiftId);
  }
}

class GetTasksParams extends Equatable {
  const GetTasksParams({required this.assignedShiftId});

  final String assignedShiftId;

  @override
  List<Object?> get props => [assignedShiftId];
}
