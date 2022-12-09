// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:dexter_health/core/network/network_info.dart' as _i6;
import 'package:dexter_health/core/sl/register_module.dart' as _i12;
import 'package:dexter_health/src/data/data_sources/auth_remote_datasource.dart'
    as _i7;
import 'package:dexter_health/src/data/repositories/auth_repository_impl.dart'
    as _i9;
import 'package:dexter_health/src/domain/repositories/auth_repository.dart'
    as _i8;
import 'package:dexter_health/src/domain/use_cases/get_current_user_usecase.dart'
    as _i10;
import 'package:dexter_health/src/domain/use_cases/login_usecase.dart' as _i11;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;

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
    gh.factory<_i3.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.factory<_i4.FirebaseFirestore>(() => registerModule.firebaseFirestore);
    gh.factory<_i5.InternetConnectionChecker>(
        () => registerModule.internetConnectionChecker);
    gh.lazySingleton<_i6.NetworkInfo>(
        () => _i6.NetworkInfoImpl(gh<_i5.InternetConnectionChecker>()));
    gh.lazySingleton<_i7.AuthRemoteDatasource>(
        () => _i7.AuthRemoteDatasourceImpl(
              firebaseFirestore: gh<_i4.FirebaseFirestore>(),
              firebaseAuth: gh<_i3.FirebaseAuth>(),
              networkInfo: gh<_i6.NetworkInfo>(),
            ));
    gh.lazySingleton<_i8.AuthRepository>(
        () => _i9.AuthRepositoryImpl(gh<_i7.AuthRemoteDatasource>()));
    gh.lazySingleton<_i10.GetCurrentUserUsecase>(
        () => _i10.GetCurrentUserUsecase(gh<_i8.AuthRepository>()));
    gh.lazySingleton<_i11.LoginUsecase>(
        () => _i11.LoginUsecase(gh<_i8.AuthRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}
