import 'package:dexter_health/src/data/models/nurse_assigned_shift_model.dart';
import 'package:dexter_health/src/domain/entities/nurse.dart';
import 'package:dexter_health/src/domain/entities/shift.dart';
import 'package:equatable/equatable.dart';

class NurseAssignedShift extends Equatable {
  const NurseAssignedShift({
    required this.id,
    required this.nurse,
    required this.shift,
    required this.assignedAt,
  });

  final String id;
  final Nurse nurse;
  final Shift shift;
  final DateTime assignedAt;

  @override
  List<Object?> get props => [id, nurse, shift, assignedAt];

  NurseAssignedShiftModel toModel() => NurseAssignedShiftModel(
        id: id,
        taskAssignedAt: assignedAt,
        nurseModel: nurse.toModel(),
        shiftModel: shift.toModel(),
      );
}
