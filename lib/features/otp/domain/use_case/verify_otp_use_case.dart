import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:otp_creative_minds/features/otp/domain/entity/verify_otp_entity.dart';

import '../../../../core/api/failuer.dart';
import '../../../../core/use_cases/use_case.dart';
 import '../../data/models/verify_otp_model.dart';
 import '../repo/otp_repo.dart';


@Injectable()
class VerifyOtpUseCase implements UseCase<VerifyOtpEntity,VerifyOtpRequest> {
  final OtpRepo otpRepo;

  VerifyOtpUseCase({required this.otpRepo});
  @override
  Future<Either<Failures, VerifyOtpEntity>> call(VerifyOtpRequest param)async {
    return await otpRepo.verifyOtp(
        otp: param.otp,
        phone:param.phone,countryCode:param.countryCode );
  }
}

class VerifyOtpRequest{
  final String? countryCode;
  final String? phone;
  final String? otp;
  VerifyOtpRequest({required this.countryCode, required this.phone,required this.otp});
}