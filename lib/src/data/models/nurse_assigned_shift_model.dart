import 'package:dexter_health/src/data/models/nurse_model.dart';
import 'package:dexter_health/src/data/models/shift_model.dart';
import 'package:dexter_health/src/domain/entities/nurse_assigned_shift.dart';
import 'package:json_annotation/json_annotation.dart';

part 'nurse_assigned_shift_model.g.dart';

@JsonSerializable(explicitToJson: true)
class NurseAssignedShiftModel extends NurseAssignedShift {
  @JsonKey(name: 'nurse')
  final NurseModel nurseModel;

  @JsonKey(name: 'shift')
  final ShiftModel shiftModel;

  @JsonKey(name: 'id')
  final String nurseId;

  const NurseAssignedShiftModel({
    required this.nurseId,
    required this.nurseModel,
    required this.shiftModel,
  }) : super(
          id: nurseId,
          nurse: nurseModel,
          shift: shiftModel,
        );

  factory NurseAssignedShiftModel.fromJson(Map<String, dynamic> json) => _$NurseAssignedShiftModelFromJson(json);

  Map<String, dynamic> toJson() => _$NurseAssignedShiftModelToJson(this);
}
