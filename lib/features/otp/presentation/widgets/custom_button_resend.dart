import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/otp_cubit/otp_cubit.dart';


class CustomButtonResend extends StatelessWidget {
  const CustomButtonResend({required this.backgroundColor,
    this.borderRadius,
    required this.textColor,
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
              ?  SizedBox(
            height: 60,
            width: double.infinity,
            child: TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                  backgroundColor: backgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: borderRadius ?? BorderRadius.circular(12))),
              child: Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize),
              ),
            ),
          )
              : const SizedBox();
        }else if (state is VerifyOtpErrorState) {
          return SizedBox(
            height: 60,
            width: double.infinity,
            child: TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                  backgroundColor: backgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: borderRadius ?? BorderRadius.circular(12))),
              child: Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize),
              ),
            ),
          );
        }else if (state is ResendOtpErrorState) {
          return SizedBox(
            height: 60,
            width: double.infinity,
            child: TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                  backgroundColor: backgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: borderRadius ?? BorderRadius.circular(12))),
              child: Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize),
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
