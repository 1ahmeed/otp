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
                        style: Styles.textStyle20Red.copyWith(
                            color: Constants.checkDarkMode(context)
                                ? Theme.of(context).textTheme.bodyLarge!.color
                                : null),
                      ),
                      Text(
                        S.current.enterVerificationCode,
                        style: Styles.textStyle15Grey.copyWith(
                            color: Constants.checkDarkMode(context)
                                ? Theme.of(context).textTheme.bodyLarge!.color
                                : null),
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
                          backgroundColor: Colors.deepPurple[900],
                          textColor: Colors.white,
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

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
            title: const Text(""),
            centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            Icons.dark_mode,
            color: AppColors.primary,
          ),
          onPressed: ()  {
            if (Constants.checkDarkMode(context)) {
              context.read<AppBloc>().add(const AppEvent.changeModeEvent(false));
              print("object mode ll");
             } else {
                context.read<AppBloc>().add(const AppEvent.changeModeEvent(true));
              print("object mode dd");

            }
          },
        ),
        IconButton(
          icon: Icon(
            Icons.translate_outlined,
            color: AppColors.primary,
          ),
          onPressed: () {
            if (Constants.checkArabic()) {
              print("object en");
              context.read<AppBloc>().add(AppEvent.changeLocaleEvent(AppStrings.englishCode));
            } else {
              context.read<AppBloc>().add(const AppEvent.changeLocaleEvent(AppStrings.arabicCode));
              print("object ar");
            }
          },
        ),
      ],
          );
  }
}
