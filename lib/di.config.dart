// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:actvex/core/app_prefs/app_prefs.dart' as _i15;
import 'package:actvex/core/app_prefs/shared_prefs_injectable.dart' as _i20;
import 'package:actvex/core/network/dio_factory.dart' as _i19;
import 'package:actvex/core/user_secure_storage.dart' as _i13;
import 'package:actvex/data/datasources/local_datasource/local_datasource.dart'
    as _i16;
import 'package:actvex/data/datasources/remote_datasource/app_api.dart' as _i3;
import 'package:actvex/data/datasources/remote_datasource/remote_modules.dart'
    as _i18;
import 'package:actvex/data/repository/repository.dart' as _i8;
import 'package:actvex/domain/repository/repository.dart' as _i7;
import 'package:actvex/domain/usecases/resend_email_verification_usecase.dart'
    as _i9;
import 'package:actvex/domain/usecases/signup_usecase.dart' as _i12;
import 'package:actvex/domain/usecases/verify_email_usecase.dart' as _i14;
import 'package:actvex/presentation/login/cubit/login_cubit.dart' as _i6;
import 'package:actvex/presentation/signup/cubit/signup_cubit.dart' as _i17;
import 'package:actvex/presentation/signup_steps/cubit/signup_steps_cubit.dart'
    as _i11;
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableAppServiceClientModule =
        _$InjectableAppServiceClientModule();
    final injectableDioModule = _$InjectableDioModule();
    final injectableUserSecureStorageModule =
        _$InjectableUserSecureStorageModule();
    final sharedPrefsInjectableModule = _$SharedPrefsInjectableModule();
    gh.lazySingleton<_i3.AppServiceClient>(
        () => injectableAppServiceClientModule.appServiceClient);
    gh.lazySingleton<_i4.Dio>(() => injectableDioModule.dio);
    gh.lazySingleton<_i5.FlutterSecureStorage>(
        () => injectableUserSecureStorageModule.secureStorage);
    gh.factory<_i6.LoginCubit>(() => _i6.LoginCubit());
    gh.factory<_i7.Repository>(
        () => _i8.RepositoryImpl(gh<_i3.AppServiceClient>()));
    gh.lazySingleton<_i9.ResendEmailVerificationUseCase>(
        () => _i9.ResendEmailVerificationUseCase(gh<_i7.Repository>()));
    await gh.factoryAsync<_i10.SharedPreferences>(
      () => sharedPrefsInjectableModule.prefs,
      preResolve: true,
    );
    gh.factory<_i11.SignupStepsCubit>(() => _i11.SignupStepsCubit());
    gh.lazySingleton<_i12.SignupUseCase>(
        () => _i12.SignupUseCase(gh<_i7.Repository>()));
    gh.factory<_i13.UserSecureStorage>(
        () => _i13.UserSecureStorage(gh<_i5.FlutterSecureStorage>()));
    gh.lazySingleton<_i14.VerifyEmailUseCase>(
        () => _i14.VerifyEmailUseCase(gh<_i7.Repository>()));
    gh.factory<_i15.AppPreferences>(
        () => _i15.AppPreferences(gh<_i10.SharedPreferences>()));
    gh.factory<_i16.LocalDataSource>(
        () => _i16.LocalDataSource(gh<_i10.SharedPreferences>()));
    gh.factory<_i17.SignupCubit>(
        () => _i17.SignupCubit(gh<_i12.SignupUseCase>()));
    return this;
  }
}

class _$InjectableAppServiceClientModule
    extends _i18.InjectableAppServiceClientModule {}

class _$InjectableDioModule extends _i19.InjectableDioModule {}

class _$InjectableUserSecureStorageModule
    extends _i13.InjectableUserSecureStorageModule {}

class _$SharedPrefsInjectableModule extends _i20.SharedPrefsInjectableModule {}
