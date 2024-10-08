import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
 import 'package:otp_creative_minds/features/otp/domain/entity/verify_otp_entity.dart';
import 'package:otp_creative_minds/features/otp/domain/use_case/resend_otp_use_case.dart';
import 'package:otp_creative_minds/features/otp/domain/use_case/verify_otp_use_case.dart';

import '../../../../../core/widgets/show_snack_bar.dart';
 import '../../../data/models/resend_otp_model.dart';

part 'otp_state.dart';
@injectable
class OtpCubit extends Cubit<OtpState> {
  OtpCubit({required this.verifyOtpUseCase, required this.resendOtpUseCase, })
      : super(OtpInitial());

  static OtpCubit? get(context) => BlocProvider.of(context);



  final VerifyOtpUseCase verifyOtpUseCase;
  final ResendOtpUseCase resendOtpUseCase;
  final formKey = GlobalKey<FormState>();
  final TextEditingController otpController = TextEditingController();

  int? counter;
  late Timer _timer;

  void startTimer({
    mounted,
  }) {
    counter = 10;
    emit(ChangeTimerState(counter: counter!));
    // print("timer");
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (counter == 0) {
        // print("cancle");
        timer.cancel();
      } else {
        if (counter! > 0) {
          counter = counter! - 1;
          // print("counter $counter");
          if (!isClosed) {
            emit(ChangeTimerState(counter: counter!));
          }
        }
      }
    });
  }

  void resendOtp({String? countryCode, String? phone,}) async {
    emit(ResendOtpLoadingState());
    var response = await resendOtpUseCase
        .call(ResendOtpRequest(countryCode: "+966", phone: "511111111"));
    response.fold((error) {
      emit(ResendOtpErrorState(error: error.errorMessage));
    }, (response) {
      emit(ResendOtpSuccessState(
        resendOtpModel: response,
      ));
    });
  }

  void verifyOtp({String? countryCode, String? phone, required context}) async {
    emit(VerifyOtpLoadingState());

    var response = await verifyOtpUseCase.call(
        VerifyOtpRequest(countryCode: countryCode!, phone: phone!, otp: otpController.text));
    response.fold((error) {
      SnackBarMessage.showErrorSnackBar(
          message: error.errorMessage, context: context);
      emit(VerifyOtpErrorState(error: error.errorMessage));
    }, (response) {
      SnackBarMessage.showSuccessSnackBar(
          message: response.dateOfBirth, context: context);
      emit(VerifyOtpSuccessState(verifyOtpEntity: response));
    });
  }
}
