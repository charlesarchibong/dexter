import 'package:dexter_health/core/utils/firestore_json.dart';
import 'package:dexter_health/src/domain/entities/task.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_model.g.dart';

@JsonSerializable()
class TaskModel extends Task {
  @JsonKey(
    fromJson: firestoreDateTimeFromJson,
    toJson: firestoreDateTimeToJson,
    name: 'completedAt',
  )
  final DateTime taskCompletedAt;
  @JsonKey(
    fromJson: firestoreDateTimeFromJson,
    toJson: firestoreDateTimeToJson,
    name: 'createAt',
  )
  final DateTime taskCreateAt;
  @JsonKey(
    name: 'status',
    unknownEnumValue: TaskStatus.pending,
  )
  final TaskStatus taskStatus;

  const TaskModel({
    required super.id,
    required super.name,
    required super.description,
    required super.assignShiftId,
    required this.taskStatus,
    required this.taskCompletedAt,
    required this.taskCreateAt,
  }) : super(
          status: taskStatus,
          completedAt: taskCompletedAt,
          createAt: taskCreateAt,
        );

  factory TaskModel.fromJson(Map<String, dynamic> json) => _$TaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}
