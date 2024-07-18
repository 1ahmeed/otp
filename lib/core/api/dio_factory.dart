import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'end_points.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
      ..options.baseUrl=EndPoints.baseUrl
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut
      ..options.headers[EndPoints.headerSecretKey]=EndPoints.headerSecretValue
      ..options.headers[EndPoints.headerLanguageKey]=EndPoints.headerLanguageValue
      ..options.headers[EndPoints.headerAcceptKey]=EndPoints.headerAcceptValue

      ;
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
          request: true,
          requestBody: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true,
          error: true),
    );
  }
}