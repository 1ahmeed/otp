import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:injectable/injectable.dart';
import 'package:otp_creative_minds/config/notifications/local_notification_service.dart';
import 'package:otp_creative_minds/core/routes/app_routes.dart';
import 'package:otp_creative_minds/core/utils/app_string.dart';
import 'package:otp_creative_minds/core/utils/cache_data.dart';
import 'package:otp_creative_minds/core/utils/theme.dart';
 import 'config/notifications/push_notification_service.dart';
import 'features/otp/presentation/bloc/App_bloc/app_bloc.dart';
import 'firebase_options.dart';
import 'generated/l10n.dart';
import 'injectable_container.dart';


///لما التطبيق يكون ف الباكجراوند
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   // If you're going to use other Firebase services in the background, such as Firestore,
//   // make sure you call `initializeApp` before using other Firebase services.
//   // await Firebase.initializeApp(
//   //   options: DefaultFirebaseOptions.currentPlatform,
//   // );
// print("--------------------------background or terminated");
// print('Message data: ${message.data}');
//   print(message.notification!.title);
//   print(message.notification!.body);
// print("-------------------------------------");
//   // print("Handling a background message: ${message.messageId}");
// }


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await CacheData.init();
  await configureInjection(Environment.dev);
  PushNotificationsService.init();
  LocalNotificationService.init();


  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  // String? token=await FirebaseMessaging.instance.getToken();
  // print(token);
  ///on message
  // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //   // print('Got a message whilst in the foreground!');
  //   if (message.notification != null) {
  //     print('===================================on message');
  //      print('Message data: ${message.data}');
  //     print(message.notification!.title);
  //     print(message.notification!.body);
  //     // print('Message also contained a notification: ${message.notification}');
  //     print('=================================================');
  //   }
  // });
  ///on message open app
  // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
  //   print("*************************on message open app");
  //   print(message.data.toString());
  //   print(message.notification!.title);
  //   print(message.notification!.body);
  //   print("************************************");
  // });
  // runApp(  MyApp());
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ));
}

class MyApp extends StatelessWidget {
    MyApp({
    super.key,
  });
  static bool? mode = CacheData.getData(key: AppStrings.modeKey);
  static String? lang = CacheData.getData(key: AppStrings.localeKey);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          getIt<AppBloc>()..add(const AppEvent.getSavedLocaleEvent())
            ..add(const AppEvent.getSavedModeEvent()),
        )
      ],
      child: BlocConsumer<AppBloc, AppState>(
        listener: (context, state) {
          state.whenOrNull(
            changeModeSuccess: (isDark) => mode = isDark,
            changeLocaleSuccess: (langCode) => lang = langCode,
          );
        },
        builder: (context, state) {
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
            routerConfig: AppRouter.routers,
          );
        },
      ),
    );
  }
}
