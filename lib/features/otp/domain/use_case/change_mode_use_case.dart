import 'package:dartz/dartz.dart';
import 'package:otp_creative_minds/features/otp/domain/repo/lang_mode_repo.dart';

import '../../../../core/api/failuer.dart';
import '../../../../core/use_cases/use_case.dart';

class ChangeModeUseCase implements UseCase<bool,bool> {
  final LangModeRepo langModeRepo;

  ChangeModeUseCase({required this.langModeRepo});
  @override
  Future<Either<Failures, bool>> call(bool param)async {
    return await langModeRepo.changeMode(isDark: param);
  }
}