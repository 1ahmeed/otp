part of 'app_bloc.dart';

@freezed
class AppEvent<T> with _$AppEvent<T> {
  const factory AppEvent.changeLocaleEvent(String langCode) = _changeLocaleEvent;
  const factory AppEvent.getSavedLocaleEvent() = _getSavedLocaleEvent;


  const factory AppEvent.changeModeEvent(bool isDark) = _changeModeEvent;
  const factory AppEvent.getSavedModeEvent() = _getSavedModeEvent;

}
