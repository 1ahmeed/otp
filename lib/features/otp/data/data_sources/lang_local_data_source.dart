import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/utils/app_string.dart';

abstract class LangAndModeDataSource {

  Future<bool> changeLang({required String langCode});
  Future<String> getSavedLang();

  ///mode
  Future<bool> changeMode({required bool isDark});

  Future<bool> getSavedMode();
}

class LangAndModeDataSourceImpl extends LangAndModeDataSource {
  final SharedPreferences sharedPreferences;

  LangAndModeDataSourceImpl({required this.sharedPreferences});

  @override
  Future<bool> changeLang({required String langCode}) async =>
      await sharedPreferences.
      setString(AppStrings.locale, langCode);


  @override
  Future<String> getSavedLang() async =>
      sharedPreferences.getString(AppStrings.locale)==null ?
      AppStrings.englishCode:
      sharedPreferences.getString(
          AppStrings.locale)! ;

  @override
  Future<bool> changeMode({required bool isDark})async => await sharedPreferences.
  setBool(AppStrings.mode, isDark);
  @override
  Future<bool> getSavedMode()async =>
      sharedPreferences.getBool(AppStrings.mode)==null ?
    false:
  sharedPreferences.getBool(
      AppStrings.mode)! ;

}
