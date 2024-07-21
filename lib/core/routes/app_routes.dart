import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_creative_minds/features/otp/presentation/screens/otp_screen.dart';
import 'package:otp_creative_minds/features/otp/presentation/screens/profile_screen.dart';
import '../../core/utils/app_string.dart';
import '../../features/otp/data/repo_impl/otp_repo_impl.dart';
import '../../features/otp/presentation/cubit/otp_cubit/otp_cubit.dart';
import '../api/api_service/api_service.dart';
import '../api/dio_factory.dart';


class Routes {
  static const String initialRoute = '/';
  static const String profileScreen = '/profileScreen';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: ((context) {
          return BlocProvider(
            create: (context) => OtpCubit(
              otpRepo: OtpRepoImpl(apiService: ApiService(DioFactory.getDio())),
            )..resendOtp(context: context),
            child: const OTPScreen(),
          );
        }));

      case Routes.profileScreen:
        return MaterialPageRoute(builder: ((context) {
          return const ProfileScreen();
        }));
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: ((context) =>
        const Scaffold(
          body: Center(
            child: Text(AppStrings.noRouteFound),
          ),
        )));
  }
}