// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => TaskModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      assignShiftId: json['assignShiftId'] as String,
      taskStatus: $enumDecode(_$TaskStatusEnumMap, json['status'],
          unknownValue: TaskStatus.pending),
      taskCompletedAt: firestoreDateTimeFromJson(json['completedAt']),
      taskCreateAt: firestoreDateTimeFromJson(json['createAt']),
    );

Map<String, dynamic> _$TaskModelToJson(TaskModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'assignShiftId': instance.assignShiftId,
      'completedAt': firestoreDateTimeToJson(instance.taskCompletedAt),
      'createAt': firestoreDateTimeToJson(instance.taskCreateAt),
      'status': _$TaskStatusEnumMap[instance.taskStatus]!,
    };

const _$TaskStatusEnumMap = {
  TaskStatus.pending: 'pending',
  TaskStatus.completed: 'completed',
};
