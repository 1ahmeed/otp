 import 'package:otp_creative_minds/core/utils/cache_data.dart';

import '../core/api/dio_factory.dart';

class AppModuleInitializer {
  AppModuleInitializer._();

  static final AppModuleInitializer instance = AppModuleInitializer._();

  initializeSettings() async {
    //This method is used to initialize any service before the app runs (in main method)

    List futures = [
      initializeSharedPrefs(),
      initializeDioFactory()

    ];
    List<dynamic> result = await Future.wait<dynamic>([...futures]);
    return result;
  }

  initializeSharedPrefs() async {
    return await CacheData.init();
  }

  initializeDioFactory() async {
    return DioFactory.getDio();
  }


}
