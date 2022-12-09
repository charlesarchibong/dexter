import 'package:dartz/dartz.dart' hide Task;
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/core/usecase/usecase.dart';
import 'package:dexter_health/src/domain/entities/task.dart';
import 'package:dexter_health/src/domain/repositories/shift_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AddTaskUsecase implements UseCase<void, AddTaskParams> {
  AddTaskUsecase(this.shiftRepository);

  final ShiftRepository shiftRepository;

  @override
  Future<Either<Failure, void>> call(AddTaskParams params) {
    return shiftRepository.addTask(task: params.task);
  }
}

class AddTaskParams extends Equatable {
  const AddTaskParams({required this.task});

  final Task task;

  @override
  List<Object?> get props => [task];
}
