import 'package:dexter_health/src/data/models/shift_model.dart';
import 'package:equatable/equatable.dart';

class Shift extends Equatable {
  const Shift({
    required this.id,
    required this.name,
    required this.startTime,
    required this.endTime,
  });

  final String id;
  final String name;
  final DateTime startTime;
  final DateTime endTime;

  @override
  List<Object?> get props => [id, name, startTime, endTime];

  ShiftModel toModel() => ShiftModel(
        shiftId: id,
        shiftName: name,
        shiftStartTime: startTime,
        shiftEndTime: endTime,
      );
}
