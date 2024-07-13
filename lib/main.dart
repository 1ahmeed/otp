import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:otp_creative_minds/core/routes/app_routes.dart';
import 'package:otp_creative_minds/core/utils/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'features/otp/presentation/bloc/app_bloc.dart';
import 'generated/l10n.dart';
import 'injection_container.dart' as di;
 import 'injection_container.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServiceLocator();  // runApp(const MyApp());
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.sl<AppBloc>()
          ..add(const AppEvent.getSavedLocaleEvent())
           ..add(const AppEvent.getSavedModeEvent())
          ,)
      ],
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return  MaterialApp(
            locale:state.mapOrNull(
              changeLocaleSuccess: (state) => Locale(state.langCode),
              getSavedLocaleSuccess: (state) => Locale(state.langCode),
            ),
            theme:AppTheme.lightTheme ,
            darkTheme: AppTheme.darkTheme,
            themeMode: state.mapOrNull(
              changeModeSuccess: (state) => state.isDark?ThemeMode.dark:ThemeMode.light,
              getSavedModeSuccess: (state) => state.isDark?ThemeMode.dark:ThemeMode.light,
            ),
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
            onGenerateRoute: AppRoutes.onGenerateRoute,
          );


        },
      ),
    );
  }
}

/*

 */