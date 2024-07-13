// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String langCode) changeLocaleEvent,
    required TResult Function() getSavedLocaleEvent,
    required TResult Function(bool isDark) changeModeEvent,
    required TResult Function() getSavedModeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String langCode)? changeLocaleEvent,
    TResult? Function()? getSavedLocaleEvent,
    TResult? Function(bool isDark)? changeModeEvent,
    TResult? Function()? getSavedModeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String langCode)? changeLocaleEvent,
    TResult Function()? getSavedLocaleEvent,
    TResult Function(bool isDark)? changeModeEvent,
    TResult Function()? getSavedModeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_changeLocaleEvent<T> value) changeLocaleEvent,
    required TResult Function(_getSavedLocaleEvent<T> value)
        getSavedLocaleEvent,
    required TResult Function(_changeModeEvent<T> value) changeModeEvent,
    required TResult Function(_getSavedModeEvent<T> value) getSavedModeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_changeLocaleEvent<T> value)? changeLocaleEvent,
    TResult? Function(_getSavedLocaleEvent<T> value)? getSavedLocaleEvent,
    TResult? Function(_changeModeEvent<T> value)? changeModeEvent,
    TResult? Function(_getSavedModeEvent<T> value)? getSavedModeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_changeLocaleEvent<T> value)? changeLocaleEvent,
    TResult Function(_getSavedLocaleEvent<T> value)? getSavedLocaleEvent,
    TResult Function(_changeModeEvent<T> value)? changeModeEvent,
    TResult Function(_getSavedModeEvent<T> value)? getSavedModeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<T, $Res> {
  factory $AppEventCopyWith(
          AppEvent<T> value, $Res Function(AppEvent<T>) then) =
      _$AppEventCopyWithImpl<T, $Res, AppEvent<T>>;
}

/// @nodoc
class _$AppEventCopyWithImpl<T, $Res, $Val extends AppEvent<T>>
    implements $AppEventCopyWith<T, $Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$changeLocaleEventImplCopyWith<T, $Res> {
  factory _$$changeLocaleEventImplCopyWith(_$changeLocaleEventImpl<T> value,
          $Res Function(_$changeLocaleEventImpl<T>) then) =
      __$$changeLocaleEventImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String langCode});
}

/// @nodoc
class __$$changeLocaleEventImplCopyWithImpl<T, $Res>
    extends _$AppEventCopyWithImpl<T, $Res, _$changeLocaleEventImpl<T>>
    implements _$$changeLocaleEventImplCopyWith<T, $Res> {
  __$$changeLocaleEventImplCopyWithImpl(_$changeLocaleEventImpl<T> _value,
      $Res Function(_$changeLocaleEventImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? langCode = null,
  }) {
    return _then(_$changeLocaleEventImpl<T>(
      null == langCode
          ? _value.langCode
          : langCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$changeLocaleEventImpl<T> implements _changeLocaleEvent<T> {
  const _$changeLocaleEventImpl(this.langCode);

  @override
  final String langCode;

  @override
  String toString() {
    return 'AppEvent<$T>.changeLocaleEvent(langCode: $langCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changeLocaleEventImpl<T> &&
            (identical(other.langCode, langCode) ||
                other.langCode == langCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, langCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$changeLocaleEventImplCopyWith<T, _$changeLocaleEventImpl<T>>
      get copyWith =>
          __$$changeLocaleEventImplCopyWithImpl<T, _$changeLocaleEventImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String langCode) changeLocaleEvent,
    required TResult Function() getSavedLocaleEvent,
    required TResult Function(bool isDark) changeModeEvent,
    required TResult Function() getSavedModeEvent,
  }) {
    return changeLocaleEvent(langCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String langCode)? changeLocaleEvent,
    TResult? Function()? getSavedLocaleEvent,
    TResult? Function(bool isDark)? changeModeEvent,
    TResult? Function()? getSavedModeEvent,
  }) {
    return changeLocaleEvent?.call(langCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String langCode)? changeLocaleEvent,
    TResult Function()? getSavedLocaleEvent,
    TResult Function(bool isDark)? changeModeEvent,
    TResult Function()? getSavedModeEvent,
    required TResult orElse(),
  }) {
    if (changeLocaleEvent != null) {
      return changeLocaleEvent(langCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_changeLocaleEvent<T> value) changeLocaleEvent,
    required TResult Function(_getSavedLocaleEvent<T> value)
        getSavedLocaleEvent,
    required TResult Function(_changeModeEvent<T> value) changeModeEvent,
    required TResult Function(_getSavedModeEvent<T> value) getSavedModeEvent,
  }) {
    return changeLocaleEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_changeLocaleEvent<T> value)? changeLocaleEvent,
    TResult? Function(_getSavedLocaleEvent<T> value)? getSavedLocaleEvent,
    TResult? Function(_changeModeEvent<T> value)? changeModeEvent,
    TResult? Function(_getSavedModeEvent<T> value)? getSavedModeEvent,
  }) {
    return changeLocaleEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_changeLocaleEvent<T> value)? changeLocaleEvent,
    TResult Function(_getSavedLocaleEvent<T> value)? getSavedLocaleEvent,
    TResult Function(_changeModeEvent<T> value)? changeModeEvent,
    TResult Function(_getSavedModeEvent<T> value)? getSavedModeEvent,
    required TResult orElse(),
  }) {
    if (changeLocaleEvent != null) {
      return changeLocaleEvent(this);
    }
    return orElse();
  }
}

abstract class _changeLocaleEvent<T> implements AppEvent<T> {
  const factory _changeLocaleEvent(final String langCode) =
      _$changeLocaleEventImpl<T>;

  String get langCode;
  @JsonKey(ignore: true)
  _$$changeLocaleEventImplCopyWith<T, _$changeLocaleEventImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getSavedLocaleEventImplCopyWith<T, $Res> {
  factory _$$getSavedLocaleEventImplCopyWith(_$getSavedLocaleEventImpl<T> value,
          $Res Function(_$getSavedLocaleEventImpl<T>) then) =
      __$$getSavedLocaleEventImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$getSavedLocaleEventImplCopyWithImpl<T, $Res>
    extends _$AppEventCopyWithImpl<T, $Res, _$getSavedLocaleEventImpl<T>>
    implements _$$getSavedLocaleEventImplCopyWith<T, $Res> {
  __$$getSavedLocaleEventImplCopyWithImpl(_$getSavedLocaleEventImpl<T> _value,
      $Res Function(_$getSavedLocaleEventImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getSavedLocaleEventImpl<T> implements _getSavedLocaleEvent<T> {
  const _$getSavedLocaleEventImpl();

  @override
  String toString() {
    return 'AppEvent<$T>.getSavedLocaleEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getSavedLocaleEventImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String langCode) changeLocaleEvent,
    required TResult Function() getSavedLocaleEvent,
    required TResult Function(bool isDark) changeModeEvent,
    required TResult Function() getSavedModeEvent,
  }) {
    return getSavedLocaleEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String langCode)? changeLocaleEvent,
    TResult? Function()? getSavedLocaleEvent,
    TResult? Function(bool isDark)? changeModeEvent,
    TResult? Function()? getSavedModeEvent,
  }) {
    return getSavedLocaleEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String langCode)? changeLocaleEvent,
    TResult Function()? getSavedLocaleEvent,
    TResult Function(bool isDark)? changeModeEvent,
    TResult Function()? getSavedModeEvent,
    required TResult orElse(),
  }) {
    if (getSavedLocaleEvent != null) {
      return getSavedLocaleEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_changeLocaleEvent<T> value) changeLocaleEvent,
    required TResult Function(_getSavedLocaleEvent<T> value)
        getSavedLocaleEvent,
    required TResult Function(_changeModeEvent<T> value) changeModeEvent,
    required TResult Function(_getSavedModeEvent<T> value) getSavedModeEvent,
  }) {
    return getSavedLocaleEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_changeLocaleEvent<T> value)? changeLocaleEvent,
    TResult? Function(_getSavedLocaleEvent<T> value)? getSavedLocaleEvent,
    TResult? Function(_changeModeEvent<T> value)? changeModeEvent,
    TResult? Function(_getSavedModeEvent<T> value)? getSavedModeEvent,
  }) {
    return getSavedLocaleEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_changeLocaleEvent<T> value)? changeLocaleEvent,
    TResult Function(_getSavedLocaleEvent<T> value)? getSavedLocaleEvent,
    TResult Function(_changeModeEvent<T> value)? changeModeEvent,
    TResult Function(_getSavedModeEvent<T> value)? getSavedModeEvent,
    required TResult orElse(),
  }) {
    if (getSavedLocaleEvent != null) {
      return getSavedLocaleEvent(this);
    }
    return orElse();
  }
}

abstract class _getSavedLocaleEvent<T> implements AppEvent<T> {
  const factory _getSavedLocaleEvent() = _$getSavedLocaleEventImpl<T>;
}

/// @nodoc
abstract class _$$changeModeEventImplCopyWith<T, $Res> {
  factory _$$changeModeEventImplCopyWith(_$changeModeEventImpl<T> value,
          $Res Function(_$changeModeEventImpl<T>) then) =
      __$$changeModeEventImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$changeModeEventImplCopyWithImpl<T, $Res>
    extends _$AppEventCopyWithImpl<T, $Res, _$changeModeEventImpl<T>>
    implements _$$changeModeEventImplCopyWith<T, $Res> {
  __$$changeModeEventImplCopyWithImpl(_$changeModeEventImpl<T> _value,
      $Res Function(_$changeModeEventImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$changeModeEventImpl<T>(
      null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$changeModeEventImpl<T> implements _changeModeEvent<T> {
  const _$changeModeEventImpl(this.isDark);

  @override
  final bool isDark;

  @override
  String toString() {
    return 'AppEvent<$T>.changeModeEvent(isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changeModeEventImpl<T> &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$changeModeEventImplCopyWith<T, _$changeModeEventImpl<T>> get copyWith =>
      __$$changeModeEventImplCopyWithImpl<T, _$changeModeEventImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String langCode) changeLocaleEvent,
    required TResult Function() getSavedLocaleEvent,
    required TResult Function(bool isDark) changeModeEvent,
    required TResult Function() getSavedModeEvent,
  }) {
    return changeModeEvent(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String langCode)? changeLocaleEvent,
    TResult? Function()? getSavedLocaleEvent,
    TResult? Function(bool isDark)? changeModeEvent,
    TResult? Function()? getSavedModeEvent,
  }) {
    return changeModeEvent?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String langCode)? changeLocaleEvent,
    TResult Function()? getSavedLocaleEvent,
    TResult Function(bool isDark)? changeModeEvent,
    TResult Function()? getSavedModeEvent,
    required TResult orElse(),
  }) {
    if (changeModeEvent != null) {
      return changeModeEvent(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_changeLocaleEvent<T> value) changeLocaleEvent,
    required TResult Function(_getSavedLocaleEvent<T> value)
        getSavedLocaleEvent,
    required TResult Function(_changeModeEvent<T> value) changeModeEvent,
    required TResult Function(_getSavedModeEvent<T> value) getSavedModeEvent,
  }) {
    return changeModeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_changeLocaleEvent<T> value)? changeLocaleEvent,
    TResult? Function(_getSavedLocaleEvent<T> value)? getSavedLocaleEvent,
    TResult? Function(_changeModeEvent<T> value)? changeModeEvent,
    TResult? Function(_getSavedModeEvent<T> value)? getSavedModeEvent,
  }) {
    return changeModeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_changeLocaleEvent<T> value)? changeLocaleEvent,
    TResult Function(_getSavedLocaleEvent<T> value)? getSavedLocaleEvent,
    TResult Function(_changeModeEvent<T> value)? changeModeEvent,
    TResult Function(_getSavedModeEvent<T> value)? getSavedModeEvent,
    required TResult orElse(),
  }) {
    if (changeModeEvent != null) {
      return changeModeEvent(this);
    }
    return orElse();
  }
}

abstract class _changeModeEvent<T> implements AppEvent<T> {
  const factory _changeModeEvent(final bool isDark) = _$changeModeEventImpl<T>;

  bool get isDark;
  @JsonKey(ignore: true)
  _$$changeModeEventImplCopyWith<T, _$changeModeEventImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getSavedModeEventImplCopyWith<T, $Res> {
  factory _$$getSavedModeEventImplCopyWith(_$getSavedModeEventImpl<T> value,
          $Res Function(_$getSavedModeEventImpl<T>) then) =
      __$$getSavedModeEventImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$getSavedModeEventImplCopyWithImpl<T, $Res>
    extends _$AppEventCopyWithImpl<T, $Res, _$getSavedModeEventImpl<T>>
    implements _$$getSavedModeEventImplCopyWith<T, $Res> {
  __$$getSavedModeEventImplCopyWithImpl(_$getSavedModeEventImpl<T> _value,
      $Res Function(_$getSavedModeEventImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getSavedModeEventImpl<T> implements _getSavedModeEvent<T> {
  const _$getSavedModeEventImpl();

  @override
  String toString() {
    return 'AppEvent<$T>.getSavedModeEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getSavedModeEventImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String langCode) changeLocaleEvent,
    required TResult Function() getSavedLocaleEvent,
    required TResult Function(bool isDark) changeModeEvent,
    required TResult Function() getSavedModeEvent,
  }) {
    return getSavedModeEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String langCode)? changeLocaleEvent,
    TResult? Function()? getSavedLocaleEvent,
    TResult? Function(bool isDark)? changeModeEvent,
    TResult? Function()? getSavedModeEvent,
  }) {
    return getSavedModeEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String langCode)? changeLocaleEvent,
    TResult Function()? getSavedLocaleEvent,
    TResult Function(bool isDark)? changeModeEvent,
    TResult Function()? getSavedModeEvent,
    required TResult orElse(),
  }) {
    if (getSavedModeEvent != null) {
      return getSavedModeEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_changeLocaleEvent<T> value) changeLocaleEvent,
    required TResult Function(_getSavedLocaleEvent<T> value)
        getSavedLocaleEvent,
    required TResult Function(_changeModeEvent<T> value) changeModeEvent,
    required TResult Function(_getSavedModeEvent<T> value) getSavedModeEvent,
  }) {
    return getSavedModeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_changeLocaleEvent<T> value)? changeLocaleEvent,
    TResult? Function(_getSavedLocaleEvent<T> value)? getSavedLocaleEvent,
    TResult? Function(_changeModeEvent<T> value)? changeModeEvent,
    TResult? Function(_getSavedModeEvent<T> value)? getSavedModeEvent,
  }) {
    return getSavedModeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_changeLocaleEvent<T> value)? changeLocaleEvent,
    TResult Function(_getSavedLocaleEvent<T> value)? getSavedLocaleEvent,
    TResult Function(_changeModeEvent<T> value)? changeModeEvent,
    TResult Function(_getSavedModeEvent<T> value)? getSavedModeEvent,
    required TResult orElse(),
  }) {
    if (getSavedModeEvent != null) {
      return getSavedModeEvent(this);
    }
    return orElse();
  }
}

abstract class _getSavedModeEvent<T> implements AppEvent<T> {
  const factory _getSavedModeEvent() = _$getSavedModeEventImpl<T>;
}

/// @nodoc
mixin _$AppState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String langCode) changeLocaleSuccess,
    required TResult Function(String langCode) getSavedLocaleSuccess,
    required TResult Function(bool isDark) changeModeSuccess,
    required TResult Function(bool isDark) getSavedModeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String langCode)? changeLocaleSuccess,
    TResult? Function(String langCode)? getSavedLocaleSuccess,
    TResult? Function(bool isDark)? changeModeSuccess,
    TResult? Function(bool isDark)? getSavedModeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String langCode)? changeLocaleSuccess,
    TResult Function(String langCode)? getSavedLocaleSuccess,
    TResult Function(bool isDark)? changeModeSuccess,
    TResult Function(bool isDark)? getSavedModeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_changeLocaleSuccess<T> value)
        changeLocaleSuccess,
    required TResult Function(_getSavedLocaleSuccess<T> value)
        getSavedLocaleSuccess,
    required TResult Function(_changeModeSuccess<T> value) changeModeSuccess,
    required TResult Function(_getSavedModeSuccess<T> value)
        getSavedModeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_changeLocaleSuccess<T> value)? changeLocaleSuccess,
    TResult? Function(_getSavedLocaleSuccess<T> value)? getSavedLocaleSuccess,
    TResult? Function(_changeModeSuccess<T> value)? changeModeSuccess,
    TResult? Function(_getSavedModeSuccess<T> value)? getSavedModeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_changeLocaleSuccess<T> value)? changeLocaleSuccess,
    TResult Function(_getSavedLocaleSuccess<T> value)? getSavedLocaleSuccess,
    TResult Function(_changeModeSuccess<T> value)? changeModeSuccess,
    TResult Function(_getSavedModeSuccess<T> value)? getSavedModeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<T, $Res> {
  factory $AppStateCopyWith(
          AppState<T> value, $Res Function(AppState<T>) then) =
      _$AppStateCopyWithImpl<T, $Res, AppState<T>>;
}

/// @nodoc
class _$AppStateCopyWithImpl<T, $Res, $Val extends AppState<T>>
    implements $AppStateCopyWith<T, $Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String langCode) changeLocaleSuccess,
    required TResult Function(String langCode) getSavedLocaleSuccess,
    required TResult Function(bool isDark) changeModeSuccess,
    required TResult Function(bool isDark) getSavedModeSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String langCode)? changeLocaleSuccess,
    TResult? Function(String langCode)? getSavedLocaleSuccess,
    TResult? Function(bool isDark)? changeModeSuccess,
    TResult? Function(bool isDark)? getSavedModeSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String langCode)? changeLocaleSuccess,
    TResult Function(String langCode)? getSavedLocaleSuccess,
    TResult Function(bool isDark)? changeModeSuccess,
    TResult Function(bool isDark)? getSavedModeSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_changeLocaleSuccess<T> value)
        changeLocaleSuccess,
    required TResult Function(_getSavedLocaleSuccess<T> value)
        getSavedLocaleSuccess,
    required TResult Function(_changeModeSuccess<T> value) changeModeSuccess,
    required TResult Function(_getSavedModeSuccess<T> value)
        getSavedModeSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_changeLocaleSuccess<T> value)? changeLocaleSuccess,
    TResult? Function(_getSavedLocaleSuccess<T> value)? getSavedLocaleSuccess,
    TResult? Function(_changeModeSuccess<T> value)? changeModeSuccess,
    TResult? Function(_getSavedModeSuccess<T> value)? getSavedModeSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_changeLocaleSuccess<T> value)? changeLocaleSuccess,
    TResult Function(_getSavedLocaleSuccess<T> value)? getSavedLocaleSuccess,
    TResult Function(_changeModeSuccess<T> value)? changeModeSuccess,
    TResult Function(_getSavedModeSuccess<T> value)? getSavedModeSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements AppState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$changeLocaleSuccessImplCopyWith<T, $Res> {
  factory _$$changeLocaleSuccessImplCopyWith(_$changeLocaleSuccessImpl<T> value,
          $Res Function(_$changeLocaleSuccessImpl<T>) then) =
      __$$changeLocaleSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String langCode});
}

/// @nodoc
class __$$changeLocaleSuccessImplCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$changeLocaleSuccessImpl<T>>
    implements _$$changeLocaleSuccessImplCopyWith<T, $Res> {
  __$$changeLocaleSuccessImplCopyWithImpl(_$changeLocaleSuccessImpl<T> _value,
      $Res Function(_$changeLocaleSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? langCode = null,
  }) {
    return _then(_$changeLocaleSuccessImpl<T>(
      null == langCode
          ? _value.langCode
          : langCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$changeLocaleSuccessImpl<T> implements _changeLocaleSuccess<T> {
  const _$changeLocaleSuccessImpl(this.langCode);

  @override
  final String langCode;

  @override
  String toString() {
    return 'AppState<$T>.changeLocaleSuccess(langCode: $langCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changeLocaleSuccessImpl<T> &&
            (identical(other.langCode, langCode) ||
                other.langCode == langCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, langCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$changeLocaleSuccessImplCopyWith<T, _$changeLocaleSuccessImpl<T>>
      get copyWith => __$$changeLocaleSuccessImplCopyWithImpl<T,
          _$changeLocaleSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String langCode) changeLocaleSuccess,
    required TResult Function(String langCode) getSavedLocaleSuccess,
    required TResult Function(bool isDark) changeModeSuccess,
    required TResult Function(bool isDark) getSavedModeSuccess,
  }) {
    return changeLocaleSuccess(langCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String langCode)? changeLocaleSuccess,
    TResult? Function(String langCode)? getSavedLocaleSuccess,
    TResult? Function(bool isDark)? changeModeSuccess,
    TResult? Function(bool isDark)? getSavedModeSuccess,
  }) {
    return changeLocaleSuccess?.call(langCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String langCode)? changeLocaleSuccess,
    TResult Function(String langCode)? getSavedLocaleSuccess,
    TResult Function(bool isDark)? changeModeSuccess,
    TResult Function(bool isDark)? getSavedModeSuccess,
    required TResult orElse(),
  }) {
    if (changeLocaleSuccess != null) {
      return changeLocaleSuccess(langCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_changeLocaleSuccess<T> value)
        changeLocaleSuccess,
    required TResult Function(_getSavedLocaleSuccess<T> value)
        getSavedLocaleSuccess,
    required TResult Function(_changeModeSuccess<T> value) changeModeSuccess,
    required TResult Function(_getSavedModeSuccess<T> value)
        getSavedModeSuccess,
  }) {
    return changeLocaleSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_changeLocaleSuccess<T> value)? changeLocaleSuccess,
    TResult? Function(_getSavedLocaleSuccess<T> value)? getSavedLocaleSuccess,
    TResult? Function(_changeModeSuccess<T> value)? changeModeSuccess,
    TResult? Function(_getSavedModeSuccess<T> value)? getSavedModeSuccess,
  }) {
    return changeLocaleSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_changeLocaleSuccess<T> value)? changeLocaleSuccess,
    TResult Function(_getSavedLocaleSuccess<T> value)? getSavedLocaleSuccess,
    TResult Function(_changeModeSuccess<T> value)? changeModeSuccess,
    TResult Function(_getSavedModeSuccess<T> value)? getSavedModeSuccess,
    required TResult orElse(),
  }) {
    if (changeLocaleSuccess != null) {
      return changeLocaleSuccess(this);
    }
    return orElse();
  }
}

abstract class _changeLocaleSuccess<T> implements AppState<T> {
  const factory _changeLocaleSuccess(final String langCode) =
      _$changeLocaleSuccessImpl<T>;

  String get langCode;
  @JsonKey(ignore: true)
  _$$changeLocaleSuccessImplCopyWith<T, _$changeLocaleSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getSavedLocaleSuccessImplCopyWith<T, $Res> {
  factory _$$getSavedLocaleSuccessImplCopyWith(
          _$getSavedLocaleSuccessImpl<T> value,
          $Res Function(_$getSavedLocaleSuccessImpl<T>) then) =
      __$$getSavedLocaleSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String langCode});
}

/// @nodoc
class __$$getSavedLocaleSuccessImplCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$getSavedLocaleSuccessImpl<T>>
    implements _$$getSavedLocaleSuccessImplCopyWith<T, $Res> {
  __$$getSavedLocaleSuccessImplCopyWithImpl(
      _$getSavedLocaleSuccessImpl<T> _value,
      $Res Function(_$getSavedLocaleSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? langCode = null,
  }) {
    return _then(_$getSavedLocaleSuccessImpl<T>(
      null == langCode
          ? _value.langCode
          : langCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getSavedLocaleSuccessImpl<T> implements _getSavedLocaleSuccess<T> {
  const _$getSavedLocaleSuccessImpl(this.langCode);

  @override
  final String langCode;

  @override
  String toString() {
    return 'AppState<$T>.getSavedLocaleSuccess(langCode: $langCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getSavedLocaleSuccessImpl<T> &&
            (identical(other.langCode, langCode) ||
                other.langCode == langCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, langCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getSavedLocaleSuccessImplCopyWith<T, _$getSavedLocaleSuccessImpl<T>>
      get copyWith => __$$getSavedLocaleSuccessImplCopyWithImpl<T,
          _$getSavedLocaleSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String langCode) changeLocaleSuccess,
    required TResult Function(String langCode) getSavedLocaleSuccess,
    required TResult Function(bool isDark) changeModeSuccess,
    required TResult Function(bool isDark) getSavedModeSuccess,
  }) {
    return getSavedLocaleSuccess(langCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String langCode)? changeLocaleSuccess,
    TResult? Function(String langCode)? getSavedLocaleSuccess,
    TResult? Function(bool isDark)? changeModeSuccess,
    TResult? Function(bool isDark)? getSavedModeSuccess,
  }) {
    return getSavedLocaleSuccess?.call(langCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String langCode)? changeLocaleSuccess,
    TResult Function(String langCode)? getSavedLocaleSuccess,
    TResult Function(bool isDark)? changeModeSuccess,
    TResult Function(bool isDark)? getSavedModeSuccess,
    required TResult orElse(),
  }) {
    if (getSavedLocaleSuccess != null) {
      return getSavedLocaleSuccess(langCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_changeLocaleSuccess<T> value)
        changeLocaleSuccess,
    required TResult Function(_getSavedLocaleSuccess<T> value)
        getSavedLocaleSuccess,
    required TResult Function(_changeModeSuccess<T> value) changeModeSuccess,
    required TResult Function(_getSavedModeSuccess<T> value)
        getSavedModeSuccess,
  }) {
    return getSavedLocaleSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_changeLocaleSuccess<T> value)? changeLocaleSuccess,
    TResult? Function(_getSavedLocaleSuccess<T> value)? getSavedLocaleSuccess,
    TResult? Function(_changeModeSuccess<T> value)? changeModeSuccess,
    TResult? Function(_getSavedModeSuccess<T> value)? getSavedModeSuccess,
  }) {
    return getSavedLocaleSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_changeLocaleSuccess<T> value)? changeLocaleSuccess,
    TResult Function(_getSavedLocaleSuccess<T> value)? getSavedLocaleSuccess,
    TResult Function(_changeModeSuccess<T> value)? changeModeSuccess,
    TResult Function(_getSavedModeSuccess<T> value)? getSavedModeSuccess,
    required TResult orElse(),
  }) {
    if (getSavedLocaleSuccess != null) {
      return getSavedLocaleSuccess(this);
    }
    return orElse();
  }
}

abstract class _getSavedLocaleSuccess<T> implements AppState<T> {
  const factory _getSavedLocaleSuccess(final String langCode) =
      _$getSavedLocaleSuccessImpl<T>;

  String get langCode;
  @JsonKey(ignore: true)
  _$$getSavedLocaleSuccessImplCopyWith<T, _$getSavedLocaleSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$changeModeSuccessImplCopyWith<T, $Res> {
  factory _$$changeModeSuccessImplCopyWith(_$changeModeSuccessImpl<T> value,
          $Res Function(_$changeModeSuccessImpl<T>) then) =
      __$$changeModeSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$changeModeSuccessImplCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$changeModeSuccessImpl<T>>
    implements _$$changeModeSuccessImplCopyWith<T, $Res> {
  __$$changeModeSuccessImplCopyWithImpl(_$changeModeSuccessImpl<T> _value,
      $Res Function(_$changeModeSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$changeModeSuccessImpl<T>(
      null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$changeModeSuccessImpl<T> implements _changeModeSuccess<T> {
  const _$changeModeSuccessImpl(this.isDark);

  @override
  final bool isDark;

  @override
  String toString() {
    return 'AppState<$T>.changeModeSuccess(isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changeModeSuccessImpl<T> &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$changeModeSuccessImplCopyWith<T, _$changeModeSuccessImpl<T>>
      get copyWith =>
          __$$changeModeSuccessImplCopyWithImpl<T, _$changeModeSuccessImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String langCode) changeLocaleSuccess,
    required TResult Function(String langCode) getSavedLocaleSuccess,
    required TResult Function(bool isDark) changeModeSuccess,
    required TResult Function(bool isDark) getSavedModeSuccess,
  }) {
    return changeModeSuccess(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String langCode)? changeLocaleSuccess,
    TResult? Function(String langCode)? getSavedLocaleSuccess,
    TResult? Function(bool isDark)? changeModeSuccess,
    TResult? Function(bool isDark)? getSavedModeSuccess,
  }) {
    return changeModeSuccess?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String langCode)? changeLocaleSuccess,
    TResult Function(String langCode)? getSavedLocaleSuccess,
    TResult Function(bool isDark)? changeModeSuccess,
    TResult Function(bool isDark)? getSavedModeSuccess,
    required TResult orElse(),
  }) {
    if (changeModeSuccess != null) {
      return changeModeSuccess(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_changeLocaleSuccess<T> value)
        changeLocaleSuccess,
    required TResult Function(_getSavedLocaleSuccess<T> value)
        getSavedLocaleSuccess,
    required TResult Function(_changeModeSuccess<T> value) changeModeSuccess,
    required TResult Function(_getSavedModeSuccess<T> value)
        getSavedModeSuccess,
  }) {
    return changeModeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_changeLocaleSuccess<T> value)? changeLocaleSuccess,
    TResult? Function(_getSavedLocaleSuccess<T> value)? getSavedLocaleSuccess,
    TResult? Function(_changeModeSuccess<T> value)? changeModeSuccess,
    TResult? Function(_getSavedModeSuccess<T> value)? getSavedModeSuccess,
  }) {
    return changeModeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_changeLocaleSuccess<T> value)? changeLocaleSuccess,
    TResult Function(_getSavedLocaleSuccess<T> value)? getSavedLocaleSuccess,
    TResult Function(_changeModeSuccess<T> value)? changeModeSuccess,
    TResult Function(_getSavedModeSuccess<T> value)? getSavedModeSuccess,
    required TResult orElse(),
  }) {
    if (changeModeSuccess != null) {
      return changeModeSuccess(this);
    }
    return orElse();
  }
}

abstract class _changeModeSuccess<T> implements AppState<T> {
  const factory _changeModeSuccess(final bool isDark) =
      _$changeModeSuccessImpl<T>;

  bool get isDark;
  @JsonKey(ignore: true)
  _$$changeModeSuccessImplCopyWith<T, _$changeModeSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getSavedModeSuccessImplCopyWith<T, $Res> {
  factory _$$getSavedModeSuccessImplCopyWith(_$getSavedModeSuccessImpl<T> value,
          $Res Function(_$getSavedModeSuccessImpl<T>) then) =
      __$$getSavedModeSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$getSavedModeSuccessImplCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$getSavedModeSuccessImpl<T>>
    implements _$$getSavedModeSuccessImplCopyWith<T, $Res> {
  __$$getSavedModeSuccessImplCopyWithImpl(_$getSavedModeSuccessImpl<T> _value,
      $Res Function(_$getSavedModeSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$getSavedModeSuccessImpl<T>(
      null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$getSavedModeSuccessImpl<T> implements _getSavedModeSuccess<T> {
  const _$getSavedModeSuccessImpl(this.isDark);

  @override
  final bool isDark;

  @override
  String toString() {
    return 'AppState<$T>.getSavedModeSuccess(isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getSavedModeSuccessImpl<T> &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getSavedModeSuccessImplCopyWith<T, _$getSavedModeSuccessImpl<T>>
      get copyWith => __$$getSavedModeSuccessImplCopyWithImpl<T,
          _$getSavedModeSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String langCode) changeLocaleSuccess,
    required TResult Function(String langCode) getSavedLocaleSuccess,
    required TResult Function(bool isDark) changeModeSuccess,
    required TResult Function(bool isDark) getSavedModeSuccess,
  }) {
    return getSavedModeSuccess(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String langCode)? changeLocaleSuccess,
    TResult? Function(String langCode)? getSavedLocaleSuccess,
    TResult? Function(bool isDark)? changeModeSuccess,
    TResult? Function(bool isDark)? getSavedModeSuccess,
  }) {
    return getSavedModeSuccess?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String langCode)? changeLocaleSuccess,
    TResult Function(String langCode)? getSavedLocaleSuccess,
    TResult Function(bool isDark)? changeModeSuccess,
    TResult Function(bool isDark)? getSavedModeSuccess,
    required TResult orElse(),
  }) {
    if (getSavedModeSuccess != null) {
      return getSavedModeSuccess(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_changeLocaleSuccess<T> value)
        changeLocaleSuccess,
    required TResult Function(_getSavedLocaleSuccess<T> value)
        getSavedLocaleSuccess,
    required TResult Function(_changeModeSuccess<T> value) changeModeSuccess,
    required TResult Function(_getSavedModeSuccess<T> value)
        getSavedModeSuccess,
  }) {
    return getSavedModeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_changeLocaleSuccess<T> value)? changeLocaleSuccess,
    TResult? Function(_getSavedLocaleSuccess<T> value)? getSavedLocaleSuccess,
    TResult? Function(_changeModeSuccess<T> value)? changeModeSuccess,
    TResult? Function(_getSavedModeSuccess<T> value)? getSavedModeSuccess,
  }) {
    return getSavedModeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_changeLocaleSuccess<T> value)? changeLocaleSuccess,
    TResult Function(_getSavedLocaleSuccess<T> value)? getSavedLocaleSuccess,
    TResult Function(_changeModeSuccess<T> value)? changeModeSuccess,
    TResult Function(_getSavedModeSuccess<T> value)? getSavedModeSuccess,
    required TResult orElse(),
  }) {
    if (getSavedModeSuccess != null) {
      return getSavedModeSuccess(this);
    }
    return orElse();
  }
}

abstract class _getSavedModeSuccess<T> implements AppState<T> {
  const factory _getSavedModeSuccess(final bool isDark) =
      _$getSavedModeSuccessImpl<T>;

  bool get isDark;
  @JsonKey(ignore: true)
  _$$getSavedModeSuccessImplCopyWith<T, _$getSavedModeSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
