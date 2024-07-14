import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_creative_minds/core/utils/app_string.dart';
import 'package:otp_creative_minds/core/utils/constants.dart';
import 'package:otp_creative_minds/core/utils/styles.dart';
import 'package:otp_creative_minds/features/otp/presentation/bloc/app_bloc.dart';
import 'package:otp_creative_minds/features/otp/presentation/cubit/otp_cubit/otp_cubit.dart';
import 'package:otp_creative_minds/features/otp/presentation/widgets/custom_button_otp.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../generated/l10n.dart';

import '../widgets/app_bar.dart';
import '../widgets/otp_field_widget.dart';
import '../widgets/resend_timer_widget.dart';

class OTPScreen extends StatefulWidget {
  static const String routeName = "OTPScreen";
  final String? phone;

  const OTPScreen({super.key, this.phone});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpCubit()..startTimer(mounted:mounted),
      child: BlocBuilder<OtpCubit, OtpState>(
        builder: (context, state) {
          var cubit=context.read<OtpCubit>();
          return Scaffold(
            appBar: buildAppBar(context),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Form(
                  key: context.read<OtpCubit>().formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ///text
                      Text(
                        S.of(context).verificationCode,
                        style:Theme.of(context).textTheme.displayLarge
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        S.current.enterVerificationCode,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      ///pin input otp package
                      const OtpFieldWidget(),
                      const SizedBox(
                        height: 30,
                      ),
                      ///button
                      CustomButtonOtp(
                          backgroundColor: AppColors.deepPurple,
                          textColor: AppColors.primary,
                          onPressed: () {
                            if (cubit.formKey.currentState!.validate()) {}
                          },
                          text: S.current.check),
                      const SizedBox(
                        height: 20,
                      ),
                      ///time to resend
                      const ResendTimerWidget()
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }


}
