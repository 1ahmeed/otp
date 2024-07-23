import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otp_creative_minds/features/otp/data/data_sources/otp_remote_data_source.dart';
import 'package:otp_creative_minds/features/otp/data/models/verify_otp_model.dart';
import 'package:otp_creative_minds/features/otp/domain/entity/verify_otp_entity.dart';
import 'package:otp_creative_minds/features/otp/domain/use_case/resend_otp_use_case.dart';
import 'package:otp_creative_minds/features/otp/domain/use_case/verify_otp_use_case.dart';
import 'package:otp_creative_minds/features/otp/presentation/screens/otp_screen.dart';
import 'package:otp_creative_minds/features/otp/presentation/screens/profile_screen.dart';
import '../../core/utils/app_string.dart';
import '../../features/otp/data/repo_impl/otp_repo_impl.dart';
import '../../features/otp/presentation/cubit/otp_cubit/otp_cubit.dart';
import '../api/api_service/api_service.dart';
import '../api/dio_factory.dart';

abstract class AppRouter {
  static const String initialRoute = '/';
  static const String profileScreen = '/profileScreen';
  static final routers = GoRouter(
    routes: [
      GoRoute(
        path: initialRoute,
        builder: (context, state) => BlocProvider(
          create: (context) => OtpCubit(
            resendOtpUseCase: ResendOtpUseCase(
              otpRepo: OtpRepoImpl(
                otpRemoteDataSource: OtpRemoteDataSourceImpl(
                  apiService: ApiService(
                    DioFactory.getDio(),
                  ),
                ),
              ),
            ),
            verifyOtpUseCase: VerifyOtpUseCase(
              otpRepo: OtpRepoImpl(
                otpRemoteDataSource: OtpRemoteDataSourceImpl(
                  apiService: ApiService(
                    DioFactory.getDio(),
                  ),
                ),
              ),
            ),
          )..resendOtp(context: context),
          child: const OTPScreen(),
        ),
      ),
      GoRoute(
        path: profileScreen,
        builder: (context, state) => ProfileScreen(
          verifyOtpEntity: state.extra as VerifyOtpEntity,
        ),
      ),
    ],
  );
}
