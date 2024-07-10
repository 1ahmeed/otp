import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(OtpInitial());

  static OtpCubit? get(context) => BlocProvider.of(context);

  final formKey=GlobalKey<FormState>();


  int counter = 60;
  late Timer _timer;

  void startTimer({mounted,}) {
    _timer = Timer.periodic(const Duration(seconds: 1),
            (timer) {
          if (!mounted || counter == 0) {
            timer.cancel();
          } else {
            if (counter > 0) {
              counter--;
              emit(ChangeTimerState());
            }
          }
        });
  }

}
