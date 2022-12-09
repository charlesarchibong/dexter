// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i9;
import 'package:dexter_health/core/network/network_info.dart' as _i20;
import 'package:dexter_health/core/sl/register_module.dart' as _i30;
import 'package:dexter_health/src/data/data_sources/auth_remote_datasource.dart'
    as _i22;
import 'package:dexter_health/src/data/data_sources/shift_remote_datasource.dart'
    as _i21;
import 'package:dexter_health/src/data/repositories/auth_repository_impl.dart'
    as _i24;
import 'package:dexter_health/src/domain/domain.dart' as _i12;
import 'package:dexter_health/src/domain/repositories/auth_repository.dart'
    as _i23;
import 'package:dexter_health/src/domain/repositories/shift_repository.dart'
    as _i4;
import 'package:dexter_health/src/domain/use_cases/add_shift_to_history_usecase.dart'
    as _i3;
import 'package:dexter_health/src/domain/use_cases/add_task_usecase.dart'
    as _i5;
import 'package:dexter_health/src/domain/use_cases/assign_today_shift_usecase.dart'
    as _i6;
import 'package:dexter_health/src/domain/use_cases/assign_tomorrow_shift_usecase.dart'
    as _i7;
import 'package:dexter_health/src/domain/use_cases/get_assigned_shift_history_usecase.dart'
    as _i10;
import 'package:dexter_health/src/domain/use_cases/get_current_user_usecase.dart'
    as _i25;
import 'package:dexter_health/src/domain/use_cases/get_pending_tasks_usecase.dart'
    as _i11;
import 'package:dexter_health/src/domain/use_cases/get_shifts_usecase.dart'
    as _i13;
import 'package:dexter_health/src/domain/use_cases/get_tasks_usecase.dart'
    as _i14;
import 'package:dexter_health/src/domain/use_cases/get_today_assigned_shift_usecase.dart'
    as _i15;
import 'package:dexter_health/src/domain/use_cases/get_tomorrow_assigned_shift_usecase.dart'
    as _i16;
import 'package:dexter_health/src/domain/use_cases/login_usecase.dart' as _i26;
import 'package:dexter_health/src/domain/use_cases/mark_task_as_completed.dart'
    as _i18;
import 'package:dexter_health/src/domain/use_cases/move_task_to_new_shift_usecase.dart'
    as _i19;
import 'package:dexter_health/src/presentation/manager/auth_cubit.dart' as _i28;
import 'package:dexter_health/src/presentation/manager/auth_state.dart' as _i29;
import 'package:dexter_health/src/presentation/manager/nurse_cubit.dart'
    as _i27;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i17;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.AddShiftToHistoryUsecase>(
        () => _i3.AddShiftToHistoryUsecase(gh<_i4.ShiftRepository>()));
    gh.lazySingleton<_i5.AddTaskUsecase>(
        () => _i5.AddTaskUsecase(gh<_i4.ShiftRepository>()));
    gh.lazySingleton<_i6.AssignTodayShiftUsecase>(
        () => _i6.AssignTodayShiftUsecase(gh<_i4.ShiftRepository>()));
    gh.lazySingleton<_i7.AssignTomorrowShiftUsecase>(
        () => _i7.AssignTomorrowShiftUsecase(gh<_i4.ShiftRepository>()));
    gh.factory<_i8.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.factory<_i9.FirebaseFirestore>(() => registerModule.firebaseFirestore);
    gh.lazySingleton<_i10.GetAssignedShiftHistoryUsecase>(
        () => _i10.GetAssignedShiftHistoryUsecase(gh<_i4.ShiftRepository>()));
    gh.lazySingleton<_i11.GetPendingTasksUsecase>(
        () => _i11.GetPendingTasksUsecase(gh<_i12.ShiftRepository>()));
    gh.lazySingleton<_i13.GetShiftsUsecase>(
        () => _i13.GetShiftsUsecase(gh<_i4.ShiftRepository>()));
    gh.lazySingleton<_i14.GetTasksUsecase>(
        () => _i14.GetTasksUsecase(gh<_i4.ShiftRepository>()));
    gh.lazySingleton<_i15.GetTodayAssignedShiftUsecase>(
        () => _i15.GetTodayAssignedShiftUsecase(gh<_i4.ShiftRepository>()));
    gh.lazySingleton<_i16.GetTomorrowAssignedShiftUsecase>(
        () => _i16.GetTomorrowAssignedShiftUsecase(gh<_i4.ShiftRepository>()));
    gh.factory<_i17.InternetConnectionChecker>(
        () => registerModule.internetConnectionChecker);
    gh.lazySingleton<_i18.MarkTaskAsCompletedUsecase>(
        () => _i18.MarkTaskAsCompletedUsecase(gh<_i4.ShiftRepository>()));
    gh.lazySingleton<_i19.MoveTaskToNewShiftUsecase>(
        () => _i19.MoveTaskToNewShiftUsecase(gh<_i4.ShiftRepository>()));
    gh.lazySingleton<_i20.NetworkInfo>(
        () => _i20.NetworkInfoImpl(gh<_i17.InternetConnectionChecker>()));
    gh.singleton<_i21.ShiftRemoteDatasource>(_i21.ShiftRemoteDatasourceImpl(
      firebaseFirestore: gh<_i9.FirebaseFirestore>(),
      firebaseAuth: gh<_i8.FirebaseAuth>(),
      networkInfo: gh<_i20.NetworkInfo>(),
    ));
    gh.lazySingleton<_i22.AuthRemoteDatasource>(
        () => _i22.AuthRemoteDatasourceImpl(
              firebaseFirestore: gh<_i9.FirebaseFirestore>(),
              firebaseAuth: gh<_i8.FirebaseAuth>(),
              networkInfo: gh<_i20.NetworkInfo>(),
            ));
    gh.lazySingleton<_i23.AuthRepository>(
        () => _i24.AuthRepositoryImpl(gh<_i22.AuthRemoteDatasource>()));
    gh.lazySingleton<_i25.GetCurrentUserUsecase>(
        () => _i25.GetCurrentUserUsecase(gh<_i23.AuthRepository>()));
    gh.lazySingleton<_i26.LoginUsecase>(
        () => _i26.LoginUsecase(gh<_i23.AuthRepository>()));
    gh.lazySingleton<_i27.NurseCubit>(() => _i27.NurseCubit(
        getCurrentUserUsecase: gh<_i25.GetCurrentUserUsecase>()));
    gh.lazySingleton<_i28.AuthCubit>(() => _i28.AuthCubit(
          gh<_i29.AuthState>(),
          loginUsecase: gh<_i26.LoginUsecase>(),
          nurseCubit: gh<_i27.NurseCubit>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i30.RegisterModule {}
