


part of 'app_bloc.dart';
@freezed
class AppState<T> with _$AppState<T> {
  const factory AppState.initial() = _Initial;
  const factory AppState.changeLocaleSuccess(String langCode) = _changeLocaleSuccess;
   const factory AppState.changeModeSuccess(bool isDark) = _changeModeSuccess;

}
