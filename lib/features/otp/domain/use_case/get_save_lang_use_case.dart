import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:otp_creative_minds/features/otp/domain/repo/lang_mode_repo.dart';

import '../../../../core/api/failuer.dart';
import '../../../../core/use_cases/use_case.dart';
@Injectable()
class GetSavedLangUseCase implements UseCase<String,NoParam> {
  final LangModeRepo langModeRepo;

  GetSavedLangUseCase({required this.langModeRepo});
  @override
  Future<Either<Failures, String>> call(NoParam param)async {
    return await langModeRepo.getSavedLang();
  }
}