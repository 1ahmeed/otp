 import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_creative_minds/features/otp/domain/use_case/change_lang_use_case.dart';
import 'package:otp_creative_minds/features/otp/domain/use_case/get_saved_lang_use_case.dart';

import '../../../../../core/use_cases/use_case.dart';
import '../../../../../core/utils/app_string.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocalState> {
  LocaleCubit(
      {required this.changeLangUseCase, required this.getSavedLangUseCase})
      : super(LocalInitial());

  static LocaleCubit? get(context) => BlocProvider.of(context);


  final ChangeLangUseCase changeLangUseCase;
  final GetSavedLangUseCase getSavedLangUseCase;

  Future<void> getSavedLanguage() async {
    final cachedLanguageCode =
    await getSavedLangUseCase.call(NoParam());
    cachedLanguageCode.fold(
            (error) => debugPrint(AppStrings.cacheLangFailure),
            (valueOfLang) => emit(ChangeLocaleState(locale: Locale(valueOfLang)))
    );
  }

  Future<void> changeLanguage(String languageCode) async {
   final changeLang= await changeLangUseCase.call(languageCode);

   changeLang.fold(
           (error) => debugPrint(AppStrings.cacheLangFailure),
           (value) {
             if(value){
               emit(ChangeLocaleState(locale: Locale(languageCode)));
             }else{
               debugPrint(AppStrings.cacheLangFailure);
             }
           });

  }
}
