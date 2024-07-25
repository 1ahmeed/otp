import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:otp_creative_minds/core/api/dio_factory.dart';
 import 'package:otp_creative_minds/core/api/end_points.dart';
 import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../features/otp/data/models/resend_otp_model.dart';
import '../../../features/otp/data/models/verify_otp_model.dart';

part 'api_service.g.dart';

@LazySingleton()
@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ApiService {

  @FactoryMethod()
  factory ApiService( Dio dio, {String baseUrl}) = _ApiService;



   @POST(EndPoints.resendOtp)
  Future<ResendOtpModel> resendOtp({
    @Part(name: "country_code") required String countryCode,
    @Part(name: "phone") required String phone,
  });

  @POST(EndPoints.verifyOtp)
  Future<VerifyOtpModel> verifyOtp({
        @Part(name: "country_code") required String countryCode,
        @Part(name: "phone") required String phone,
        @Part(name: "otp") required String otp,
      });
}
