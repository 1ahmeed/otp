
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:otp_creative_minds/features/otp/presentation/cubit/otp_cubit/otp_cubit.dart';
import 'package:pinput/pinput.dart';

import '../../../../generated/l10n.dart';
// import '../cubit/otp_cubit/otp_cubit.dart';

class OtpFieldWidget extends StatefulWidget {
  const OtpFieldWidget({super.key});

  @override
  State<OtpFieldWidget> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpFieldWidget> {

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,

    textStyle: const TextStyle(
      fontSize: 22,
      color: Color.fromRGBO(30, 60, 87, 1),
    ),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.red),
    ),
  );
  Color focusedBorderColor = Colors.black;
  Color fillColor = Colors.white;
  Color borderColor = const Color.fromRGBO(23, 171, 144, 0.4);
  @override
  Widget build(BuildContext context) {
    var cubit=context.read<OtpCubit>();
    return  BlocBuilder<OtpCubit, OtpState>(
  builder: (context, state) {
    return Pinput(
        controller: cubit.otpController,
        validator: (val){
          if(val!.isEmpty){
            return S.current.enterValidOtp;
          }else{
            return null;
          }
        },
        length: 4,
        separatorBuilder: (index) => const SizedBox(width: 30,),
        defaultPinTheme:  defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            borderRadius: BorderRadius.circular(8),
            color: fillColor,
            border: Border.all(color: Colors.black,),
          ),),
        focusedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            color: fillColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: focusedBorderColor),
          ),
        ),
        submittedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            color: fillColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: focusedBorderColor),
          ),
        ),
        errorPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            color: fillColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.red),
          ),
        ),
        showCursor: true,
        onCompleted: (pin) => validateThenDoFunc(context,cubit));
  },
);
  }

  void validateThenDoFunc(BuildContext context,cubit) {
     if ( context.read<OtpCubit>().formKey.currentState!.validate()) {
      // context.read<RegisterCubit>().emitConfirmOtp();
    }
  }
}
