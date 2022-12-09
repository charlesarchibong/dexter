// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nurse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NurseModel _$NurseModelFromJson(Map<String, dynamic> json) => NurseModel(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$NurseModelToJson(NurseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
