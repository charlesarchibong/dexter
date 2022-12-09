import 'package:dartz/dartz.dart' hide Task;
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/core/utils/either_safe_runner.dart';
import 'package:dexter_health/src/data/data_sources/shift_remote_datasource.dart';
import 'package:dexter_health/src/domain/entities/nurse_assigned_shift.dart';
import 'package:dexter_health/src/domain/entities/shift.dart';
import 'package:dexter_health/src/domain/entities/task.dart';
import 'package:dexter_health/src/domain/repositories/shift_repository.dart';

class ShiftRepositoryImpl implements ShiftRepository {
  ShiftRepositoryImpl(this.remoteDatasource);

  final ShiftRemoteDatasource remoteDatasource;

  @override
  Future<Either<Failure, void>> addShiftToHistory({
    required NurseAssignedShift nurseAssignedShift,
  }) async {
    return EitherSafeRunner.run<void>(
      safeCallback: () => remoteDatasource.addShiftToHistory(
        nurseAssignedShift: nurseAssignedShift.toModel(),
      ),
    );
  }

  @override
  Future<Either<Failure, void>> addTask({
    required Task task,
  }) async {
    return EitherSafeRunner.run<void>(
      safeCallback: () => remoteDatasource.addTask(task: task.toModel()),
    );
  }

  @override
  Future<Either<Failure, void>> assignTodayShift({
    required NurseAssignedShift nurseAssignedShift,
  }) {
    return EitherSafeRunner.run<void>(
      safeCallback: () => remoteDatasource.assignTodayShift(
        nurseAssignedShift: nurseAssignedShift.toModel(),
      ),
    );
  }

  @override
  Future<Either<Failure, void>> assignTomorrowShift({
    required NurseAssignedShift nurseAssignedShift,
  }) {
    return EitherSafeRunner.run<void>(
      safeCallback: () => remoteDatasource.assignTomorrowShift(
        nurseAssignedShift: nurseAssignedShift.toModel(),
      ),
    );
  }

  @override
  Future<Either<Failure, List<NurseAssignedShift>>> getAssignedShiftHistory({
    String? nurseId,
  }) {
    return EitherSafeRunner.run<List<NurseAssignedShift>>(
      safeCallback: () => remoteDatasource.getAssignedShiftHistory(nurseId: nurseId),
    );
  }

  @override
  Future<Either<Failure, List<Task>>> getPendingTasks({
    required String assignedShiftId,
  }) {
    return EitherSafeRunner.run<List<Task>>(
      safeCallback: () => remoteDatasource.getPendingTasks(assignedShiftId: assignedShiftId),
    );
  }

  @override
  Future<Either<Failure, List<Shift>>> getShifts() {
    return EitherSafeRunner.run<List<Shift>>(
      safeCallback: () => remoteDatasource.getShifts(),
    );
  }

  @override
  Future<Either<Failure, List<Task>>> getTasks({
    required String assignedShiftId,
  }) {
    return EitherSafeRunner.run<List<Task>>(
      safeCallback: () => remoteDatasource.getTasks(assignedShiftId: assignedShiftId),
    );
  }

  @override
  Future<Either<Failure, NurseAssignedShift?>> getTodayAssignedShift({
    String? nurseId,
  }) {
    return EitherSafeRunner.run<NurseAssignedShift?>(
      safeCallback: () => remoteDatasource.getTodayAssignedShift(nurseId: nurseId),
    );
  }

  @override
  Future<Either<Failure, NurseAssignedShift?>> getTomorrowAssignedShift({
    String? nurseId,
  }) {
    return EitherSafeRunner.run<NurseAssignedShift?>(
      safeCallback: () => remoteDatasource.getTomorrowAssignedShift(nurseId: nurseId),
    );
  }

  @override
  Future<Either<Failure, void>> markTaskAsCompleted({
    required String taskId,
  }) {
    return EitherSafeRunner.run<void>(
      safeCallback: () => remoteDatasource.markTaskAsCompleted(taskId: taskId),
    );
  }

  @override
  Future<Either<Failure, void>> moveTaskToNewShift({
    required List<String> taskIds,
    required String assignedShiftId,
  }) {
    return EitherSafeRunner.run<void>(
      safeCallback: () => remoteDatasource.moveTaskToNewShift(taskIds: taskIds, assignedShiftId: assignedShiftId),
    );
  }
}
