part of 'locale_cubit.dart';

@immutable
abstract class LocalState  extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class LocalInitial extends LocalState {}

class ChangeLocaleState extends LocalState{
  final Locale locale;
  ChangeLocaleState({
    required this.locale,
  });
  @override
  // TODO: implement props
  List<Object?> get props => [locale];
}

