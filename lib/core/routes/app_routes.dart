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
import '../../features/otp/presentation/cubit/otp_cubit/otp_cubit.dart';
 import '../../injectable_container.dart';
import '../../features/otp/presentation/screens/test_screen.dart';
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

abstract class AppRouter {
  static const String initialRoute = '/';
  static const String profileScreen = '/profileScreen';
  static const String test = '/test';
  static final routers = GoRouter(
    // navigatorKey: NavigationService.navigationKey,
    routes: [
      GoRoute(
        path: initialRoute,
        builder: (context, state) => BlocProvider(
          create: (context) =>
          getIt<OtpCubit>()..resendOtp(context: context),
          child: const OTPScreen(),
        ),
      ),
      GoRoute(
        path: profileScreen,
        builder: (context, state) => ProfileScreen(
          verifyOtpEntity: state.extra as VerifyOtpEntity,
        ),
      ),
      GoRoute(
        path: test,
        builder: (context, state) => TestNotificationScreen(data:state.extra as DataX ,),
      ),
    ],
  );
}
