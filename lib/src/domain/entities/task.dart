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
    required this.assignShiftId,
  });

  final String id;
  final String name;
  final String description;
  final DateTime completedAt;
  final DateTime createAt;
  final TaskStatus status;
  final String assignShiftId;

  @override
  List<Object?> get props => [
        id,
        name,
        assignShiftId,
        description,
        createAt,
        completedAt,
        status,
      ];
}

enum TaskStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('completed')
  completed,
}
