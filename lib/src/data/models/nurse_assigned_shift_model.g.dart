// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nurse_assigned_shift_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NurseAssignedShiftModel _$NurseAssignedShiftModelFromJson(
        Map<String, dynamic> json) =>
    NurseAssignedShiftModel(
      nurseId: json['id'] as String,
      nurseModel: NurseModel.fromJson(json['nurse'] as Map<String, dynamic>),
      shiftModel: ShiftModel.fromJson(json['shift'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NurseAssignedShiftModelToJson(
        NurseAssignedShiftModel instance) =>
    <String, dynamic>{
      'nurse': instance.nurseModel.toJson(),
      'shift': instance.shiftModel.toJson(),
      'id': instance.nurseId,
    };
