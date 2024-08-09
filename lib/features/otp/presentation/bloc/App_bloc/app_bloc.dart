import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:otp_creative_minds/core/use_cases/use_case.dart';
import 'package:otp_creative_minds/features/otp/domain/use_case/get_save_lang_use_case.dart';
import '../../../domain/use_case/change_lang_use_case.dart';
import '../../../domain/use_case/change_mode_use_case.dart';
import '../../../domain/use_case/get_save_mode_use_case.dart';

part 'app_bloc.freezed.dart';

part 'app_event.dart';

part 'app_state.dart';

@Injectable()
class AppBloc extends Bloc<AppEvent, AppState> {
  final ChangeLangUseCase changeLangUseCase;
  final ChangeModeUseCase changeModeUseCase;
  final GetSavedLangUseCase getSavedLangUseCase;
  final GetSavedModeUseCase getSavedModeUseCase;
  AppBloc({
    required this.changeLangUseCase,
    required this.changeModeUseCase,
    required this.getSavedLangUseCase,
    required this.getSavedModeUseCase,
  }) : super(const AppState.initial()){
    on<AppEvent>((event, emit) async {
     await event.when(
        changeLocaleEvent: (langCode) async {
          var response = await changeLangUseCase.call(langCode);
          response.fold(
              (l) => print("cache failed"),
                  (r)=> emit(AppState.changeLocaleSuccess(langCode))
          );
        },
        getSavedLocaleEvent: () async {
          var response=await getSavedLangUseCase.call(NoParam());
          response.fold(
                  (l) => print("cache failed"),
                  (lang) {
                    print("get data success");
            emit(AppState.changeLocaleSuccess(lang));
                  } );

        },
       changeModeEvent: (isDark)async {
          var response = await changeModeUseCase.call(isDark);
          response.fold(
                  (l) => print("cache failed"),
                  (mode)=> emit(AppState.changeModeSuccess(isDark))
          );

        },
        getSavedModeEvent: () async {
          var response=await getSavedModeUseCase.call(NoParam());
          response.fold(
                  (l) => print("cache failed"),
                  (mode) {
                print("get mode success");
                emit(AppState.changeModeSuccess(mode));
              } );

        },
      );
    });
  }
}
