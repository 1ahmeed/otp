import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/utils/app_string.dart';

abstract class LangLocalDataSource {

  Future<bool> changeLang({required String langCode});

  Future<String> getSavedLang();
}

class LangLocalDataSourceImpl extends LangLocalDataSource {
  final SharedPreferences sharedPreferences;

  LangLocalDataSourceImpl({required this.sharedPreferences});

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

}
