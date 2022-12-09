import 'package:dexter_health/core/usecase/usecase.dart';
import 'package:dexter_health/core/utils/date_time_utils.dart';
import 'package:dexter_health/src/domain/domain.dart';
import 'package:dexter_health/src/presentation/manager/shift_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShiftCubit extends Cubit<ShiftState> {
  ShiftCubit({
    required this.getShiftsUsecase,
    required this.getTodayAssignedShiftUsecase,
    required this.getTomorrowAssignedShiftUsecase,
    required this.getPendingTasksUsecase,
    required this.moveTaskToNewShiftUsecase,
    required this.assignTodayShiftUsecase,
    required this.assignTomorrowShiftUsecase,
  }) : super(const ShiftState.initial());

  final GetShiftsUsecase getShiftsUsecase;
  final GetTodayAssignedShiftUsecase getTodayAssignedShiftUsecase;
  final GetTomorrowAssignedShiftUsecase getTomorrowAssignedShiftUsecase;
  final GetPendingTasksUsecase getPendingTasksUsecase;
  final MoveTaskToNewShiftUsecase moveTaskToNewShiftUsecase;
  final AssignTodayShiftUsecase assignTodayShiftUsecase;
  final AssignTomorrowShiftUsecase assignTomorrowShiftUsecase;

  Future<void> loadState() async {
    // if today's shift is null, then randonly pick a shift from the list of shifts and assign it to tomorrow's shift
    // and if today's shift is not null, and the start and end time as exceeded, then check if the shift has pending tasks
    // if it has pending tasks, then show the user a dialog to ask if they want to end the shift
    // if it doesn't have pending tasks, then end the shift and assign a new shift to tomorrow's shift and it should be the same shift as today's shift
    // if today's shift is not null, and the start and end time has not exceeded, then show the user the shift details
    final todayDate = DateTime.now();
    final todayShift = await _getTodayShift();
    final tomorrowShift = await _getTomorrowShift();
    final shifts = await _getShifts();
    if (todayShift != null && tomorrowShift != null) {
      final isTodayShiftThisDay = DateUtils.isSameDay(todayShift.assignedAt, todayDate);
      final isTomorrowShiftThisDay = DateUtils.isSameDay(tomorrowShift.assignedAt, todayDate);
      final isTodayShiftActive = DateTimeUtils.isCurrentTimeRangeInHoursAndMinutes(todayShift.shift.startTime, todayShift.shift.endTime);
      if (isTodayShiftThisDay && isTodayShiftActive) {
        emit(ShiftState.loaded(todayShift: todayShift, tomorrowShift: tomorrowShift));
      } else if (isTodayShiftThisDay && !isTodayShiftActive) {
        if (DateTimeUtils.isAfter(todayShift.shift.endTime)) {
          final pendingTasks = await _getPendingTasks(todayShift.id);
        } else if (!isTodayShiftThisDay) {
          if (isTomorrowShiftThisDay) {}
        }
      } else {
        emit(ShiftState.initial(todayShift: todayShift, tomorrowShift: tomorrowShift));
      }
    }
  }

  Future<void> _moveTasksToNewShift({
    required String assignedShiftId,
    required List<String> taskIds,
  }) async {
    final result = await moveTaskToNewShiftUsecase.call(MoveTaskToNewShiftParams(
      assignedShiftId: assignedShiftId,
      taskIds: taskIds,
    ));
    return result.fold(
      (failure) => failure,
      (data) => data,
    );
  }

  Future<List<Task>> _getPendingTasks(String shiftId) async {
    final pendingTasksEither = await getPendingTasksUsecase(GetPendingTasksParams(assignedShiftId: shiftId));
    return pendingTasksEither.fold((l) => [], (r) => r);
  }

  Future<List<Shift>> _getShifts() async {
    final result = await getShiftsUsecase(NoParams());
    return result.fold((failure) => [], (shifts) => shifts);
  }

  Future<NurseAssignedShift?> _getTodayShift() async {
    final result = await getTodayAssignedShiftUsecase(const GetTodayAssignedShiftParams());
    return result.fold((failure) => null, (shift) => shift);
  }

  Future<NurseAssignedShift?> _getTomorrowShift() async {
    final result = await getTomorrowAssignedShiftUsecase(const GetTomorrowAssignedShiftParams());
    return result.fold((failure) => null, (shift) => shift);
  }
}
