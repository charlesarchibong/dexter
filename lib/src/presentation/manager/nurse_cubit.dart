import 'package:dexter_health/src/domain/entities/nurse.dart';
import 'package:dexter_health/src/domain/use_cases/get_current_user_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NurseCubit extends Cubit<Nurse?> {
  NurseCubit({
    required this.getCurrentUserUsecase,
  }) : super(null);

  final GetCurrentUserUsecase getCurrentUserUsecase;

  void loadNurse(Nurse? nurse) async {
    if (nurse != null) {
      emit(nurse);
    } else {
      final result = await getCurrentUserUsecase(const GetCurrentUserParams());
      result.fold(
        (failure) => emit(null),
        (nurse) => emit(nurse),
      );
    }
  }
}
