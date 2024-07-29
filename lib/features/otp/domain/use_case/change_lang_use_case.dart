import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:otp_creative_minds/features/otp/domain/repo/lang_mode_repo.dart';

import '../../../../core/api/failuer.dart';
import '../../../../core/use_cases/use_case.dart';

@Injectable()
class ChangeLangUseCase implements UseCase<bool,String> {
  final LangModeRepo langModeRepo;

  ChangeLangUseCase({required this.langModeRepo});
  @override
  Future<Either<Failures, bool>> call(String param)async {
    return await langModeRepo.changeLang(langCode: param);
  }
}