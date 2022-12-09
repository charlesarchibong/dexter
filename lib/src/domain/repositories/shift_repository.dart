import 'package:dartz/dartz.dart' hide Task;
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/src/domain/entities/nurse_assigned_shift.dart';
import 'package:dexter_health/src/domain/entities/shift.dart';
import 'package:dexter_health/src/domain/entities/task.dart';

abstract class ShiftRepository {
  Future<Either<Failure, List<Shift>>> getShifts();

  Future<Either<Failure, NurseAssignedShift?>> getTodayAssignedShift({
    String? nurseId,
  });

  Future<Either<Failure, NurseAssignedShift?>> getTomorrowAssignedShift({
    String? nurseId,
  });

  Future<Either<Failure, void>> assignTodayShift({
    required NurseAssignedShift nurseAssignedShift,
  });

  Future<Either<Failure, void>> assignTomorrowShift({
    required NurseAssignedShift nurseAssignedShift,
  });

  Future<Either<Failure, List<Task>>> getTasks({
    required String assignedShiftId,
  });

  Future<Either<Failure, List<Task>>> getPendingTasks({
    required String assignedShiftId,
  });

  Future<Either<Failure, void>> addTask({
    required Task task,
  });

  Future<Either<Failure, void>> markTaskAsCompleted({
    required String taskId,
  });

  Future<Either<Failure, void>> moveTaskToNewShift({
    required List<String> taskIds,
    required String assignedShiftId,
  });

  Future<Either<Failure, void>> addShiftToHistory({
    required NurseAssignedShift nurseAssignedShift,
  });

  Future<Either<Failure, List<NurseAssignedShift>>> getAssignedShiftHistory({
    String? nurseId,
  });
}
