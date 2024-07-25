// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:otp_creative_minds/core/api/api_service/api_service.dart'
    as _i13;
import 'package:otp_creative_minds/core/api/app_module_inject.dart' as _i21;
import 'package:otp_creative_minds/features/otp/data/data_sources/lang_mode_data_source.dart'
    as _i6;
import 'package:otp_creative_minds/features/otp/data/data_sources/otp_remote_data_source.dart'
    as _i15;
import 'package:otp_creative_minds/features/otp/data/repo_impl/lang_repo_impl.dart'
    as _i8;
import 'package:otp_creative_minds/features/otp/data/repo_impl/otp_repo_impl.dart'
    as _i17;
import 'package:otp_creative_minds/features/otp/domain/repo/lang_mode_repo.dart'
    as _i7;
import 'package:otp_creative_minds/features/otp/domain/repo/otp_repo.dart'
    as _i16;
import 'package:otp_creative_minds/features/otp/domain/use_case/change_lang_use_case.dart'
    as _i9;
import 'package:otp_creative_minds/features/otp/domain/use_case/change_mode_use_case.dart'
    as _i10;
import 'package:otp_creative_minds/features/otp/domain/use_case/get_save_lang_use_case.dart'
    as _i11;
import 'package:otp_creative_minds/features/otp/domain/use_case/get_save_mode_use_case.dart'
    as _i12;
import 'package:otp_creative_minds/features/otp/domain/use_case/resend_otp_use_case.dart'
    as _i18;
import 'package:otp_creative_minds/features/otp/domain/use_case/verify_otp_use_case.dart'
    as _i19;
import 'package:otp_creative_minds/features/otp/presentation/bloc/App_bloc/app_bloc.dart'
    as _i14;
import 'package:otp_creative_minds/features/otp/presentation/cubit/otp_cubit/otp_cubit.dart'
    as _i20;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModuleInject = _$AppModuleInject();
    gh.lazySingleton<_i3.Dio>(() => appModuleInject.getDio);
    gh.lazySingleton<_i4.SharedPreferences>(
        () => appModuleInject.sharedPreferences);
    gh.lazySingleton<_i5.PrettyDioLogger>(
        () => appModuleInject.prettyDioLogger);
    gh.lazySingleton<_i6.LangAndModeDataSource>(() =>
        _i6.LangAndModeDataSourceImpl(
            sharedPreferences: gh<_i4.SharedPreferences>()));
    gh.lazySingleton<_i7.LangModeRepo>(() => _i8.LangRepoImpl(
        langAndModeDataSource: gh<_i6.LangAndModeDataSource>()));
    gh.lazySingleton<_i9.ChangeLangUseCase>(
        () => _i9.ChangeLangUseCase(langModeRepo: gh<_i7.LangModeRepo>()));
    gh.lazySingleton<_i10.ChangeModeUseCase>(
        () => _i10.ChangeModeUseCase(langModeRepo: gh<_i7.LangModeRepo>()));
    gh.lazySingleton<_i11.GetSavedLangUseCase>(
        () => _i11.GetSavedLangUseCase(langModeRepo: gh<_i7.LangModeRepo>()));
    gh.lazySingleton<_i12.GetSavedModeUseCase>(
        () => _i12.GetSavedModeUseCase(langModeRepo: gh<_i7.LangModeRepo>()));
    gh.lazySingleton<_i13.ApiService>(() => _i13.ApiService(
          gh<_i3.Dio>(),

        ));
    gh.factory<_i14.AppBloc>(() => _i14.AppBloc(
          changeLangUseCase: gh<_i9.ChangeLangUseCase>(),
          changeModeUseCase: gh<_i10.ChangeModeUseCase>(),
          getSavedLangUseCase: gh<_i11.GetSavedLangUseCase>(),
          getSavedModeUseCase: gh<_i12.GetSavedModeUseCase>(),
        ));
    gh.lazySingleton<_i15.OtpRemoteDataSource>(
        () => _i15.OtpRemoteDataSourceImpl(apiService: gh<_i13.ApiService>()));
    gh.lazySingleton<_i16.OtpRepo>(() =>
        _i17.OtpRepoImpl(otpRemoteDataSource: gh<_i15.OtpRemoteDataSource>()));
    gh.lazySingleton<_i18.ResendOtpUseCase>(
        () => _i18.ResendOtpUseCase(otpRepo: gh<_i16.OtpRepo>()));
    gh.lazySingleton<_i19.VerifyOtpUseCase>(
        () => _i19.VerifyOtpUseCase(otpRepo: gh<_i16.OtpRepo>()));
    gh.factory<_i20.OtpCubit>(() => _i20.OtpCubit(
          verifyOtpUseCase: gh<_i19.VerifyOtpUseCase>(),
          resendOtpUseCase: gh<_i18.ResendOtpUseCase>(),
        ));
    return this;
  }
}

class _$AppModuleInject extends _i21.AppModuleInject {}
