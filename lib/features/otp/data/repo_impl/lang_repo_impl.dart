import 'package:dartz/dartz.dart';
import '../../../../core/api/failuer.dart';

import '../../domain/repo/lang_repo.dart';
import '../data_sources/lang_local_data_source.dart';

class LangRepoImpl extends LangRepo {
  final LangAndModeDataSource langLocalDataSource;

  LangRepoImpl({required this.langLocalDataSource});

  Future<Either<Failures, bool>> changeLang({required String langCode}) async {
    try {
      final langIsChanged=await langLocalDataSource.changeLang(langCode: langCode);
      return Right(langIsChanged);
    }   catch(e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, String>> getSavedLang()async {
    try {
      final langCode=await langLocalDataSource.getSavedLang();
      return Right(langCode);
    }   catch(e) {
    return Left(CacheFailure(e.toString()));
    }
  }
}
