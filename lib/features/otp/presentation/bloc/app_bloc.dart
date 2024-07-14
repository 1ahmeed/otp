import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import '../../data/data_sources/lang_local_data_source.dart';

part 'app_bloc.freezed.dart';


part 'app_event.dart';

part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
final LangAndModeDataSource  langAndModeDataSource;
  AppBloc({required this.langAndModeDataSource})
      : super(const AppState.initial()) {
    on<AppEvent>((event, emit)  {
      event.when(
        changeLocaleEvent: (langCode)async {
           langAndModeDataSource.changeLang(langCode: langCode);
           emit(AppState.changeLocaleSuccess(langCode)) ;
      },
          getSavedLocaleEvent: () async{
            String lang=await langAndModeDataSource.getSavedLang();
            emit(AppState.changeLocaleSuccess(lang));
          },
        changeModeEvent: (isDark)  {
            langAndModeDataSource.changeMode(isDark: isDark);
          emit (AppState.changeModeSuccess(isDark)) ;
        },
        getSavedModeEvent: ()async {
          bool mode=await langAndModeDataSource.getSavedMode();
          emit (AppState.changeModeSuccess(mode)) ;
        },
      );
    });
  }
}
