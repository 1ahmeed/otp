import 'package:dartz/dartz.dart';
import 'package:otp_creative_minds/features/otp/domain/repo/otp_repo.dart';

import '../../../../core/api/failuer.dart';
import '../../../../core/use_cases/use_case.dart';
import '../models/resend_otp_model.dart';

class ResendOtpUseCase implements UseCase<ResendOtpModel,ResendOtpRequest> {
  final OtpRepo otpRepo;

  ResendOtpUseCase({required this.otpRepo});
  @override
  Future<Either<Failures, ResendOtpModel>> call(ResendOtpRequest param)async {
    return await otpRepo.resendOtp(phone:param.phone,countryCode:param.countryCode );
  }
}

class ResendOtpRequest{
 final String? countryCode;
      final String? phone;
 ResendOtpRequest({required this.countryCode, required this.phone});
}