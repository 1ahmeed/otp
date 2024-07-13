import 'package:dartz/dartz.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/repo/lang_repo.dart';
import '../data_sources/lang_local_data_source.dart';

class LangRepoImpl extends LangRepo {
  final LangAndModeDataSource langLocalDataSource;

  LangRepoImpl({required this.langLocalDataSource});

  @override
  Future<Either<Failure, bool>> changeLang({required String langCode}) async {
    try {
      final langIsChanged=await langLocalDataSource.changeLang(langCode: langCode);
      return Right(langIsChanged);
    } on CacheException {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, String>> getSavedLang()async {
    try {
      final langCode=await langLocalDataSource.getSavedLang();
      return Right(langCode);
    } on CacheException {
    return Left(CacheFailure());
    }
  }
}
