import 'package:dexter_health/src/domain/entities/nurse.dart';
import 'package:json_annotation/json_annotation.dart';

part 'nurse_model.g.dart';

@JsonSerializable()
class NurseModel extends Nurse {
  const NurseModel({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
  }) : super(
          id: id,
          email: email,
          firstName: firstName,
          lastName: lastName,
        );

  factory NurseModel.fromJson(Map<String, dynamic> json) => _$NurseModelFromJson(json);

  Map<String, dynamic> toJson() => _$NurseModelToJson(this);
}
