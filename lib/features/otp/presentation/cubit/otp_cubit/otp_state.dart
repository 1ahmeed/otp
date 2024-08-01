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

class ResendOtpLoadingState extends OtpState {}
class ResendOtpSuccessState extends OtpState {
  final ResendOtpModel resendOtpModel;
  ResendOtpSuccessState({required this.resendOtpModel,});
  @override
  // TODO: implement props
  List<Object?> get props => [resendOtpModel];
}
class ResendOtpErrorState extends OtpState {
  final String error;
  ResendOtpErrorState({required this.error,});
  @override
  // TODO: implement props
  List<Object?> get props => [error];
}


class VerifyOtpLoadingState extends OtpState {}
class VerifyOtpSuccessState extends OtpState {
  final VerifyOtpEntity? verifyOtpEntity;
  VerifyOtpSuccessState({required this.verifyOtpEntity});
  @override
  // TODO: implement props
  List<Object?> get props => [verifyOtpEntity];
}
class VerifyOtpErrorState extends OtpState {
  final String error;
  VerifyOtpErrorState({required this.error});
  @override
  // TODO: implement props
  List<Object?> get props => [error];
}
