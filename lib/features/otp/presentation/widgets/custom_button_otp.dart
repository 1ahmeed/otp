import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

 import '../cubit/otp_cubit/otp_cubit.dart';

class CustomButtonCheckOtp extends StatelessWidget {
  const CustomButtonCheckOtp(
      {required this.backgroundColor,
      this.borderRadius,
      required this.textColor,
      required this.text,
      this.fontSize,
      super.key,
      this.onPressed});

  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final Color? textColor;
  final String text;
  final double? fontSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpCubit, OtpState>(
      builder: (context, state) {
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
      },
    );
  }
}
