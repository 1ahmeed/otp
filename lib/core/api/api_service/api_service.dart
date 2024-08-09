import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
 import 'package:otp_creative_minds/core/api/end_points.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
 import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../features/otp/data/models/resend_otp_model.dart';
import '../../../features/otp/data/models/verify_otp_model.dart';

part 'api_service.g.dart';

@singleton
@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio,{ String baseUrl}) = _ApiService;

  @FactoryMethod()
   static ApiService getDio(){
     Duration timeOut = const Duration(seconds: 30);
       final dio = Dio()
         ..options.baseUrl=EndPoints.baseUrl
         ..options.connectTimeout = timeOut
         ..options.receiveTimeout = timeOut
         ..options.headers[EndPoints.headerSecretKey]=EndPoints.headerSecretValue
         ..options.headers[EndPoints.headerLanguageKey]=EndPoints.headerLanguageValue
         ..options.headers[EndPoints.headerAcceptKey]=EndPoints.headerAcceptValue
       ;
       dio.interceptors.add(
           PrettyDioLogger(
               request: true,
               requestBody: true,
               requestHeader: true,
               responseBody: true,
               responseHeader: true,
               error: true)
       );
       return ApiService(dio);
   }



   @POST(EndPoints.resendOtp)
  Future<ResendOtpModel> resendOtp({
    @Field( "country_code") required String countryCode,
    @Field( "phone") required String phone,
  });

  @POST(EndPoints.verifyOtp)
  Future<VerifyOtpModel> verifyOtp({
        @Part(name: "country_code") required String countryCode,
        @Part(name: "phone") required String phone,
        @Part(name: "otp") required String otp,
      });
}
