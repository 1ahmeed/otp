import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_creative_minds/config/route/app_router.dart';
import 'package:otp_creative_minds/features/otp/presentation/widgets/custom_button_otp.dart';
import 'package:otp_creative_minds/features/otp/presentation/widgets/custom_button_resend.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/widgets/show_snack_bar.dart';
import '../../../../generated/l10n.dart';
import '../cubit/otp_cubit/otp_cubit.dart';
import '../widgets/app_bar.dart';
import '../widgets/otp_field_widget.dart';
import '../widgets/resend_timer_widget.dart';

@RoutePage()
class OTPScreen extends StatefulWidget {
  static const String routeName = "OTPScreen";

  const OTPScreen({super.key,});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OtpCubit,OtpState>(
      listener: (context, state) {
        if(state is ResendOtpSuccessState){
          SnackBarMessage.showSuccessSnackBar(
              message: state.resendOtpModel.message!, context: context);
        }
        if(state is ResendOtpErrorState){
          SnackBarMessage.showErrorSnackBar(
              message: state.error, context: context);
        }
        if(state is VerifyOtpSuccessState){
         context.router.push(ProfileRoute(verifyOtpEntity: state.verifyOtpEntity));
        }
      },
      builder: (context, state)  {
        var cubit = context.read<OtpCubit>();
        return Scaffold(
          appBar: buildAppBar(context),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Form(
                key: cubit.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ///text
                    Text(S.of(context).verificationCode,
                        style: Theme.of(context).textTheme.displayLarge),
                    const SizedBox(
                      height: 10,
                    ),
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
                    CustomButtonCheckOtp(
                        backgroundColor: AppColors.deepPurple,
                        textColor: AppColors.primary,
                        onPressed: () {
                          validateButtonCheckOtp(context, cubit);
                        },
                        text: S.current.check),
                    const SizedBox(
                      height: 20,
                    ),

                    ///time to resend
                    const ResendTimerWidget(),

                    ///button resend
                    CustomButtonResend(
                      backgroundColor: Colors.red,
                      text: "resend",
                      onPressed: () {
                        OtpCubit.get(context)!.resendOtp();
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void validateButtonCheckOtp(BuildContext context, cubit) {
    if (cubit.formKey.currentState!.validate()) {
      cubit.verifyOtp(
          context: context, countryCode: "+966", phone: "511111111");
    }
  }
}
