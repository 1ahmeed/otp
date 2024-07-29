import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:otp_creative_minds/core/api/dio_factory.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/utils/cache_data.dart';

@module
abstract class AppModuleInject {

  // @lazySingleton
  // SharedPreferences get sharedPreferences   =>  CacheData.sharedPreferences;

  @LazySingleton()
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>  SharedPreferences.getInstance();


  // PrettyDioLogger get prettyDioLogger   => PrettyDioLogger(
  //     request: true,
  //     requestBody: true,
  //     requestHeader: true,
  //     responseBody: true,
  //     responseHeader: true,
  //     error: true);
}