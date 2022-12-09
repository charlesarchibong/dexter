import 'package:dexter_health/src/data/models/nurse_model.dart';
import 'package:equatable/equatable.dart';

class Nurse extends Equatable {
  const Nurse({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  final String id;
  final String email;
  final String firstName;
  final String lastName;

  @override
  List<Object?> get props => [id, email, firstName, lastName];

  NurseModel toModel() => NurseModel(
        id: id,
        email: email,
        firstName: firstName,
        lastName: lastName,
      );
}
