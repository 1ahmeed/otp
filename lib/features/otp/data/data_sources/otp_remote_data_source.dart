


import 'package:injectable/injectable.dart';
import 'package:otp_creative_minds/core/api/api_service/api_service.dart';
import 'package:otp_creative_minds/features/otp/data/models/resend_otp_model.dart';
import 'package:otp_creative_minds/features/otp/data/models/verify_otp_model.dart';


abstract class OtpRemoteDataSource {
  Future<ResendOtpModel> resendOtp({
    required String countryCode,
    required String phone,
  });
  Future<VerifyOtpModel> verifyOtp({
    required String countryCode,
    required String phone,
    required String otp,
  });
}

@Injectable(as: OtpRemoteDataSource)
 class OtpRemoteDataSourceImpl extends OtpRemoteDataSource {
 ApiService apiService;

 OtpRemoteDataSourceImpl({required this.apiService});

  @override
  Future<ResendOtpModel> resendOtp({
  required String countryCode,
  required String phone,
}) {
    var response= apiService.resendOtp(countryCode: countryCode, phone: phone);
    return response;
  }

  @override
  Future<VerifyOtpModel> verifyOtp({
    required String countryCode,
    required String phone,
    required String otp,
  }) {
    var response= apiService.verifyOtp(countryCode: countryCode, phone: phone, otp: otp);
    return response;
  }
}
