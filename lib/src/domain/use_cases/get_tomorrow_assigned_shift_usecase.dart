import 'package:dartz/dartz.dart';
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/core/usecase/usecase.dart';
import 'package:dexter_health/src/domain/entities/nurse_assigned_shift.dart';
import 'package:dexter_health/src/domain/repositories/shift_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetTomorrowAssignedShiftUsecase implements UseCase<NurseAssignedShift?, GetTomorrowAssignedShiftParams> {
  GetTomorrowAssignedShiftUsecase(this.shiftRepository);

  final ShiftRepository shiftRepository;

  @override
  Future<Either<Failure, NurseAssignedShift?>> call(GetTomorrowAssignedShiftParams params) {
    return shiftRepository.getTomorrowAssignedShift(nurseId: params.nurseId);
  }
}

class GetTomorrowAssignedShiftParams extends Equatable {
  const GetTomorrowAssignedShiftParams({this.nurseId});

  final String? nurseId;

  @override
  List<Object?> get props => [nurseId];
}
