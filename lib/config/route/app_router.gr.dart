// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    OTPRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OTPScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileScreen(
          key: args.key,
          verifyOtpEntity: args.verifyOtpEntity,
        ),
      );
    },
    TestNotificationRoute.name: (routeData) {
      final args = routeData.argsAs<TestNotificationRouteArgs>(
          orElse: () => const TestNotificationRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TestNotificationScreen(
          key: args.key,
          data: args.data,
        ),
      );
    },
  };
}

/// generated route for
/// [OTPScreen]
class OTPRoute extends PageRouteInfo<void> {
  const OTPRoute({List<PageRouteInfo>? children})
      : super(
          OTPRoute.name,
          initialChildren: children,
        );

  static const String name = 'OTPRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    VerifyOtpEntity? verifyOtpEntity,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            verifyOtpEntity: verifyOtpEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<ProfileRouteArgs> page =
      PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    this.verifyOtpEntity,
  });

  final Key? key;

  final VerifyOtpEntity? verifyOtpEntity;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, verifyOtpEntity: $verifyOtpEntity}';
  }
}

/// generated route for
/// [TestNotificationScreen]
class TestNotificationRoute extends PageRouteInfo<TestNotificationRouteArgs> {
  TestNotificationRoute({
    Key? key,
    DataX? data,
    List<PageRouteInfo>? children,
  }) : super(
          TestNotificationRoute.name,
          args: TestNotificationRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'TestNotificationRoute';

  static const PageInfo<TestNotificationRouteArgs> page =
      PageInfo<TestNotificationRouteArgs>(name);
}

class TestNotificationRouteArgs {
  const TestNotificationRouteArgs({
    this.key,
    this.data,
  });

  final Key? key;

  final DataX? data;

  @override
  String toString() {
    return 'TestNotificationRouteArgs{key: $key, data: $data}';
  }
}
