import 'package:dexter_health/core/errors/failure.dart';
import 'package:dexter_health/src/domain/use_cases/login_usecase.dart';
import 'package:dexter_health/src/presentation/manager/auth_state.dart';
import 'package:dexter_health/src/presentation/manager/nurse_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(
    super.initialState, {
    required this.loginUsecase,
    required this.nurseCubit,
  });

  final LoginUsecase loginUsecase;
  final NurseCubit nurseCubit;

  Future<void> login(String email, String password) async {
    emit(const AuthState.loading());
    try {
      final result = await loginUsecase(LoginParams(email: email, password: password));
      result.fold(
        (failure) => emit(AuthState.error(failure.toMessage())),
        (nurse) {
          nurseCubit.loadNurse(nurse);
          emit(const AuthState.authenticated());
        },
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }
}
