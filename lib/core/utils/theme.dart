import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp_creative_minds/core/utils/app_color.dart';
import 'package:otp_creative_minds/core/utils/styles.dart';

import 'hex_color.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,

    ///main colors
    scaffoldBackgroundColor: AppColors.primary,

    ///icon theme
    iconTheme: IconThemeData(color: AppColors.black, size: 20),

    ///app bar theme
    appBarTheme:   AppBarTheme(
        titleSpacing: 20.0,
        backgroundColor: AppColors.primary,
        elevation: 0.0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.white,
        ),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        )),

    ///text theme
    textTheme: TextTheme(
        displayLarge: Styles.textStyle20Red,
        displayMedium: Styles.textStyle15Grey,
        displaySmall: Styles.textStyle15Black,
        headlineLarge: Styles.textStyle15DeepPurple

    ),

    ///bottom navigate theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
    ),


  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    ///main colors
    scaffoldBackgroundColor: AppColors.dark,

    ///icon theme
    iconTheme: IconThemeData(color: AppColors.primary),

    ///app bar theme
    appBarTheme: AppBarTheme(
      backgroundColor: HexColor('333739'),
      titleSpacing: 20.0,
      elevation: 0.0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: HexColor('333739'),
      ),
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    ///text theme
    textTheme: TextTheme(
      displayLarge: Styles.textStyle20Red.copyWith(color: AppColors.primary),
      displayMedium:
      Styles.textStyle15Grey.copyWith(color: AppColors.primary),
      displaySmall:
      Styles.textStyle15Black.copyWith(color: AppColors.primary),
      headlineLarge: Styles.textStyle15DeepPurple.copyWith(color: AppColors.primary),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      backgroundColor: HexColor('333739'),
    ),


  );
}
