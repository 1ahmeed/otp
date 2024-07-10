import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:otp_creative_minds/features/otp/data/data_sources/lang_local_data_source.dart';
import 'package:otp_creative_minds/features/otp/data/repo_impl/lang_repo_impl.dart';
import 'package:otp_creative_minds/features/otp/domain/use_case/change_lang_use_case.dart';
import 'package:otp_creative_minds/features/otp/domain/use_case/get_saved_lang_use_case.dart';
import 'package:otp_creative_minds/features/otp/presentation/cubit/local_cubit/locale_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/api/api_consumer.dart';
import 'core/api/app_interceptors.dart';
import 'core/api/dio_consumer.dart';
import 'core/network/network_info.dart';
import 'features/otp/domain/repo/lang_repo.dart';

final sl = GetIt.instance;

///cubit
/// usecase
/// repoimpl
/// remote local data source
/// core[api- network info]
Future<void> initServiceLocator() async {
  //cubit
  sl.registerFactory<LocaleCubit>(() =>LocaleCubit(
    changeLangUseCase: sl(),
    getSavedLangUseCase: sl()
  ));

  //use case
  sl.registerLazySingleton<ChangeLangUseCase>(() => ChangeLangUseCase(langRepo: sl()));
  sl.registerLazySingleton<GetSavedLangUseCase>(() => GetSavedLangUseCase(langRepo: sl()));

  //repo
  sl.registerLazySingleton<LangRepo>(() => LangRepoImpl(langLocalDataSource: sl()));

  //data source
  sl.registerLazySingleton<LangLocalDataSource>(() => LangLocalDataSourceImpl(sharedPreferences: sl()));
  //! Core

  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(internetConnectionChecker: sl()));
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(dio: sl()));

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => Dio());

  sl.registerLazySingleton(() => AppInterceptors());
  sl.registerLazySingleton(() => LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      error: true));
}
