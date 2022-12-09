import 'package:dexter_health/src/data/models/task_model.dart';
import 'package:dexter_health/src/domain/entities/nurse_assigned_shift.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class Task extends Equatable {
  const Task({
    required this.id,
    required this.name,
    required this.description,
    required this.completedAt,
    required this.status,
    required this.createAt,
    required this.nurseAssignedShift,
  });

  final String id;
  final String name;
  final String description;
  final DateTime completedAt;
  final DateTime createAt;
  final TaskStatus status;
  final NurseAssignedShift nurseAssignedShift;

  @override
  List<Object?> get props => [
        id,
        name,
        nurseAssignedShift,
        description,
        createAt,
        completedAt,
        status,
      ];

  TaskModel toModel() => TaskModel(
        id: id,
        name: name,
        description: description,
        taskCompletedAt: completedAt,
        taskCreateAt: createAt,
        taskStatus: status,
        nurseAssignedShiftModel: nurseAssignedShift.toModel(),
      );
}

enum TaskStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('completed')
  completed,
}
