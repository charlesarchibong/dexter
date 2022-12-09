import 'package:dartz/dartz.dart';
import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/core/usecase/usecase.dart';
import 'package:dexter_health/src/domain/entities/nurse_assigned_shift.dart';
import 'package:dexter_health/src/domain/repositories/shift_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetTodayAssignedShiftUsecase implements UseCase<NurseAssignedShift?, GetTodayAssignedShiftParams> {
  GetTodayAssignedShiftUsecase(this.shiftRepository);

  final ShiftRepository shiftRepository;

  @override
  Future<Either<Failure, NurseAssignedShift?>> call(GetTodayAssignedShiftParams params) {
    return shiftRepository.getTodayAssignedShift(nurseId: params.nurseId);
  }
}

class GetTodayAssignedShiftParams extends Equatable {
  const GetTodayAssignedShiftParams({this.nurseId});

  final String? nurseId;

  @override
  List<Object?> get props => [nurseId];
}
