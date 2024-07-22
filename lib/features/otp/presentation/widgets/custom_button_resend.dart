import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/otp_cubit/otp_cubit.dart';


class CustomButtonResend extends StatelessWidget {
  const CustomButtonResend({required this.backgroundColor,
    this.borderRadius,
      this.textColor,
    required this.text,
    this.fontSize,
    super.key, this.onPressed});

  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final Color? textColor;
  final String text;
  final double? fontSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpCubit, OtpsState>(
      // buildWhen: (previous, current) {
      //   return current is VerifyOtpErrorState || current is ResendOtpErrorState
      //       || current is ChangeTimerState;
      // },
      builder: (context, state) {
        if (state is ChangeTimerState) {
          return state.counter == 0
              ?  TextButton(onPressed: onPressed,child: Text(text))
              : const SizedBox();
        }else if (state is VerifyOtpErrorState ||state is ResendOtpErrorState) {
          return TextButton(onPressed: onPressed,child: Text(text,style: const TextStyle(
            fontSize: 15
          ),),);
        }
        return const SizedBox();
      },
    );
  }
}
