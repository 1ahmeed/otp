part of 'otp_cubit.dart';

@immutable
abstract class OtpsState extends Equatable {

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class OtpInitial extends OtpsState {}
class ChangeTimerState extends OtpsState {
  final int counter;
  ChangeTimerState({required this.counter});
  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}

class ResendOtpLoadingState extends OtpsState {}
class ResendOtpSuccessState extends OtpsState {
  final ResendOtpModel resendOtpModel;
  ResendOtpSuccessState({required this.resendOtpModel,});
  @override
  // TODO: implement props
  List<Object?> get props => [resendOtpModel];
}
class ResendOtpErrorState extends OtpsState {
  final String error;
  ResendOtpErrorState({required this.error,});
  @override
  // TODO: implement props
  List<Object?> get props => [error];
}


class VerifyOtpLoadingState extends OtpsState {}
class VerifyOtpSuccessState extends OtpsState {
  final VerifyOtpModel verifyOtpModel;
  VerifyOtpSuccessState({required this.verifyOtpModel});
  @override
  // TODO: implement props
  List<Object?> get props => [verifyOtpModel];
}
class VerifyOtpErrorState extends OtpsState {
  final String error;
  VerifyOtpErrorState({required this.error});
  @override
  // TODO: implement props
  List<Object?> get props => [error];
}
