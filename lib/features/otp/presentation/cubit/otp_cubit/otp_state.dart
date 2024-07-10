part of 'otp_cubit.dart';

@immutable
abstract class OtpState extends Equatable {

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class OtpInitial extends OtpState {}
class ChangeTimerState extends OtpState {
  final int counter;
  ChangeTimerState({required this.counter});
  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}
