import 'package:dartz/dartz.dart' hide Task;
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/core/usecase/usecase.dart';
import 'package:dexter_health/src/domain/repositories/shift_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class MarkTaskAsCompletedUsecase implements UseCase<void, MarkTaskAsCompletedParams> {
  MarkTaskAsCompletedUsecase(this.shiftRepository);

  final ShiftRepository shiftRepository;

  @override
  Future<Either<Failure, void>> call(MarkTaskAsCompletedParams params) {
    return shiftRepository.markTaskAsCompleted(taskId: params.taskId);
  }
}

class MarkTaskAsCompletedParams extends Equatable {
  const MarkTaskAsCompletedParams({required this.taskId});

  final String taskId;

  @override
  List<Object?> get props => [taskId];
}
