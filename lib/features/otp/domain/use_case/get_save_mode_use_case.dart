import 'package:dartz/dartz.dart';
import 'package:otp_creative_minds/features/otp/domain/repo/lang_mode_repo.dart';

import '../../../../core/api/failuer.dart';
import '../../../../core/use_cases/use_case.dart';

class GetSavedModeUseCase implements UseCase<bool,NoParam> {
  final LangModeRepo langModeRepo;

  GetSavedModeUseCase({required this.langModeRepo});
  @override
  Future<Either<Failures, bool>> call(NoParam param)async {
    return await langModeRepo.getSavedMode();
  }
}