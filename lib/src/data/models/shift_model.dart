import 'package:dexter_health/core/utils/firestore_json.dart';
import 'package:dexter_health/src/domain/entities/shift.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shift_model.g.dart';

@JsonSerializable()
class ShiftModel extends Shift {
  @JsonKey(
    fromJson: firestoreDateTimeFromJson,
    toJson: firestoreDateTimeToJson,
    name: 'startTime',
  )
  final DateTime shiftStartTime;
  @JsonKey(
    fromJson: firestoreDateTimeFromJson,
    toJson: firestoreDateTimeToJson,
    name: 'endTime',
  )
  final DateTime shiftEndTime;
  @JsonKey(name: 'id')
  final String shiftId;
  @JsonKey(name: 'name')
  final String shiftName;

  const ShiftModel({
    required this.shiftId,
    required this.shiftName,
    required this.shiftStartTime,
    required this.shiftEndTime,
  }) : super(
          id: shiftId,
          name: shiftName,
          startTime: shiftStartTime,
          endTime: shiftEndTime,
        );

  factory ShiftModel.fromJson(Map<String, dynamic> json) => _$ShiftModelFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftModelToJson(this);
}
