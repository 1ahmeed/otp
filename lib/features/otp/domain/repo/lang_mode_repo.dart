

import 'package:dartz/dartz.dart';

import '../../../../core/api/failuer.dart';

abstract class LangModeRepo{

  Future<Either<Failures,bool>> changeLang({required String langCode});
  Future<Either<Failures,String>> getSavedLang();

  ///mode
  Future<Either<Failures,bool>> changeMode({required bool isDark});
  Future<Either<Failures,bool>> getSavedMode();
}