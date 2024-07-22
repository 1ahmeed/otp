import 'package:flutter/services.dart';
import 'package:otp_creative_minds/core/api/dio_factory.dart';
import 'package:otp_creative_minds/core/utils/cache_data.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ServiceInitializer {
  ServiceInitializer._();

  static final ServiceInitializer instance = ServiceInitializer._();

  initializeSettings() async {
    //This method is used to initialize any service before the app runs (in main method)

    List futures = [
      initializeSharedPrefs(),
      initializeDioFactory()

    ];
    List<dynamic> result = await Future.wait<dynamic>([...futures]);
    return result;
  }

  initializeSharedPrefs() async  {
     return await SharedPreferences.getInstance();
  }
  initializeDioFactory() async  {
     return DioFactory.getDio();
  }

}