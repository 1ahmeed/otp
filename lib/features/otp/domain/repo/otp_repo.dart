import 'package:dartz/dartz.dart';
import 'package:otp_creative_minds/core/api/failuer.dart';
import 'package:otp_creative_minds/features/otp/domain/models/resend_otp_model.dart';

import '../models/verify_otp_model.dart';

abstract class OtpRepo{

  Future<Either<Failures,ResendOtpModel>> resendOtp({String? countryCode,String? phone});
  Future<Either<Failures,VerifyOtpModel>> verifyOtp({String? countryCode,String? phone,String? otp});

}