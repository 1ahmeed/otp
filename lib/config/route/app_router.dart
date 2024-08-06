import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/otp/domain/entity/verify_otp_entity.dart';
import '../../features/otp/presentation/screens/otp_screen.dart';
import '../../features/otp/presentation/screens/profile_screen.dart';
import '../../features/otp/presentation/screens/test_screen.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    // add your routes here
    AutoRoute(page: OTPRoute.page, initial: true),
    AutoRoute(page: ProfileRoute.page,),
    AutoRoute(page: TestNotificationRoute.page,),
  ];
}
