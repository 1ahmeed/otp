import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:otp_creative_minds/core/routes/app_routes.dart';
import 'package:otp_creative_minds/core/utils/app_string.dart';
import 'package:otp_creative_minds/core/utils/cache_data.dart';
import 'package:otp_creative_minds/core/utils/theme.dart';
import 'package:otp_creative_minds/features/otp/data/data_sources/lang_local_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'config/app_module.dart';
import 'features/otp/presentation/bloc/App_bloc/app_bloc.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheData.init();
  List results = await ServiceInitializer.instance.initializeSettings();

  // await initServiceLocator();
  // runApp(  MyApp(sharedPreferences: CacheData.sharedPreferences));
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(sharedPreferences: results[0]), // Wrap your app
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.sharedPreferences,
  });

  final SharedPreferences sharedPreferences;
  static bool? mode = CacheData.getData(key: AppStrings.modeKey);

  static String? lang = CacheData.getData(key: AppStrings.localeKey);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppBloc(
              langAndModeDataSource: LangAndModeDataSourceImpl(
                  sharedPreferences: sharedPreferences))
            ..add(const AppEvent.getSavedLocaleEvent())
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
