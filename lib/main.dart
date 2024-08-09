import 'package:auto_route/auto_route.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:injectable/injectable.dart';
import 'package:otp_creative_minds/config/notifications/local_notification_service.dart';
import 'package:otp_creative_minds/core/utils/app_string.dart';
import 'package:otp_creative_minds/core/utils/cache_data.dart';
import 'package:otp_creative_minds/core/utils/theme.dart';
import 'package:otp_creative_minds/features/otp/presentation/screens/test_screen.dart';
import 'config/notifications/push_notification_service.dart';
import 'config/route/app_router.dart';
import 'features/otp/presentation/bloc/App_bloc/app_bloc.dart';
import 'features/otp/presentation/cubit/otp_cubit/otp_cubit.dart';
import 'firebase_options.dart';
import 'generated/l10n.dart';
import 'injectable_container.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await CacheData.init();
  await configureInjection(Environment.dev);
  await PushNotificationsService.init();
  await LocalNotificationService.init();
  // runApp(DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => MyApp(), // Wrap your app
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({
    super.key,
  });

  static bool? mode = CacheData.getData(key: AppStrings.modeKey);
  static String? lang = CacheData.getData(key: AppStrings.localeKey);
  final _appRouter = getIt<AppRouter>();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AppBloc>()
            ..add(const AppEvent.getSavedLocaleEvent())
            ..add(const AppEvent.getSavedModeEvent()),
        ),
        BlocProvider(
          create: (context) => getIt<OtpCubit>()..resendOtp(),
        ),
      ],
      child: BlocConsumer<AppBloc, AppState>(
        listener: (context, state) {
          state.whenOrNull(
            changeModeSuccess: (isDark) => mode = isDark,
            changeLocaleSuccess: (langCode) => lang = langCode,
          );
        },
        builder: (context, state) {
          // final _appRouter =  AppRouter();
          return MaterialApp.router(
            locale: lang != null ? Locale(lang!) : null,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: mode != null
                ? mode!
                    ? ThemeMode.dark
                    : ThemeMode.light
                : null,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            localeResolutionCallback: (deviceLocale, supportedLocales) {
              for (var locale in supportedLocales) {
                if (deviceLocale != null &&
                    deviceLocale.languageCode == locale.languageCode) {
                  return deviceLocale;
                }
              }

              return supportedLocales.first;
            },
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            routerConfig: _appRouter.config(),
          );
        },
      ),
    );
  }
}
