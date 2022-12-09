import 'package:dexter_health/src/domain/entities/nurse.dart';
import 'package:dexter_health/src/domain/entities/shift.dart';
import 'package:equatable/equatable.dart';

class NurseAssignedShift extends Equatable {
  const NurseAssignedShift({
    required this.id,
    required this.nurse,
    required this.shift,
  });

  final String id;
  final Nurse nurse;
  final Shift shift;

  @override
  List<Object?> get props => [id, nurse, shift];
}
