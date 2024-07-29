import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/api/failuer.dart';

import '../../domain/repo/lang_mode_repo.dart';
import '../data_sources/lang_mode_data_source.dart';
 @Injectable(as: LangModeRepo)
class LangRepoImpl extends LangModeRepo {
  final LangAndModeDataSource langAndModeDataSource;

  LangRepoImpl({required this.langAndModeDataSource});
  @override
  Future<Either<Failures, bool>> changeLang({required String langCode}) async {
    try {
      final langIsChanged=await langAndModeDataSource.changeLang(langCode: langCode);
      return Right(langIsChanged);
    }   catch(e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, String>> getSavedLang()async {
    try {
      final langCode=await langAndModeDataSource.getSavedLang();
      return Right(langCode);
    }   catch(e) {
    return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, bool>> changeMode({required bool isDark})async {
    try {
      final mode=await langAndModeDataSource.changeMode(isDark: isDark);
      return Right(mode);
    }   catch(e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, bool>> getSavedMode()async {
    try {
      final mode=await langAndModeDataSource.getSavedMode();
      return Right(mode);
    }   catch(e) {
      return Left(CacheFailure(e.toString()));
    }
  }
}
