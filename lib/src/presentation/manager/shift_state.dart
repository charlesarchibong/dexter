import 'package:dexter_health/src/domain/entities/nurse_assigned_shift.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shift_state.freezed.dart';

@freezed
class ShiftState with _$ShiftState {
  const factory ShiftState.initial({
    NurseAssignedShift? todayShift,
    NurseAssignedShift? tomorrowShift,
    String? message,
  }) = _$InitialShiftState;

  const factory ShiftState.loaded({
    NurseAssignedShift? todayShift,
    NurseAssignedShift? tomorrowShift,
    String? message,
  }) = _$AuthenticatedShiftState;

  const factory ShiftState.loading({
    NurseAssignedShift? todayShift,
    NurseAssignedShift? tomorrowShift,
    String? message,
  }) = _$LoadingShiftState;

  const factory ShiftState.error({
    NurseAssignedShift? todayShift,
    NurseAssignedShift? tomorrowShift,
  }) = _$ErrorShiftState;
}
