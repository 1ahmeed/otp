import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:otp_creative_minds/core/api/api_service/api_service.dart';
import 'package:otp_creative_minds/core/api/failuer.dart';
import 'package:otp_creative_minds/features/otp/data/models/resend_otp_model.dart';

 import '../../data/models/verify_otp_model.dart';
import '../../domain/repo/otp_repo.dart';
import '../data_sources/otp_remote_data_source.dart';


@LazySingleton(as: OtpRepo)
class OtpRepoImpl extends OtpRepo {
   final OtpRemoteDataSource otpRemoteDataSource;

  OtpRepoImpl({required this.otpRemoteDataSource,});

  @override
  Future<Either<Failures, ResendOtpModel>> resendOtp(
      {String? countryCode, String? phone}) async {
    try {
      var response = await otpRemoteDataSource.resendOtp(
          countryCode: countryCode!,
          phone: phone!);
      return right(response);
    } catch (e) {
      if (e is DioException) {
        // print(e.response!.data);
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures,VerifyOtpModel>> verifyOtp(
      {String? countryCode, String? phone, String? otp}) async {
    try {
      var response = await otpRemoteDataSource.verifyOtp(
          countryCode: countryCode!,
          phone: phone!,
          otp: otp!);
      return right(response);
    } catch (e) {
      if(e is DioException){
        // print(e.response!.data);
        return left(ServerFailure.fromDioError(e));
      }else{
      return  left(ServerFailure(e.toString()));
      }
    }
  }
}
