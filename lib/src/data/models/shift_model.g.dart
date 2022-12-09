// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShiftModel _$ShiftModelFromJson(Map<String, dynamic> json) => ShiftModel(
      shiftId: json['id'] as String,
      shiftName: json['name'] as String,
      shiftStartTime: firestoreDateTimeFromJson(json['startTime']),
      shiftEndTime: firestoreDateTimeFromJson(json['endTime']),
    );

Map<String, dynamic> _$ShiftModelToJson(ShiftModel instance) =>
    <String, dynamic>{
      'startTime': firestoreDateTimeToJson(instance.shiftStartTime),
      'endTime': firestoreDateTimeToJson(instance.shiftEndTime),
      'id': instance.shiftId,
      'name': instance.shiftName,
    };
