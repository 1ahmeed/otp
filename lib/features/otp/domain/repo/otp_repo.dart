
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:otp_creative_minds/core/api/failuer.dart';
import 'package:otp_creative_minds/features/otp/data/models/resend_otp_model.dart';
import 'package:otp_creative_minds/features/otp/data/repo_impl/otp_repo_impl.dart';
import 'package:otp_creative_minds/features/otp/domain/entity/verify_otp_entity.dart';





abstract class OtpRepo{

  Future<Either<Failures,ResendOtpModel>> resendOtp({String? countryCode,String? phone});
  Future<Either<Failures,VerifyOtpEntity>> verifyOtp({String? countryCode,String? phone,String? otp});

}