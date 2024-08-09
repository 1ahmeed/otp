import 'package:injectable/injectable.dart';
import 'package:otp_creative_minds/config/route/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';


@module
abstract class AppModuleInject {

  // @lazySingleton
  // SharedPreferences get sharedPreferences   =>  CacheData.sharedPreferences;

  @LazySingleton()
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>  SharedPreferences.getInstance();

  @lazySingleton
  AppRouter get router => AppRouter();
}