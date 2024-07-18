import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_creative_minds/core/api/api_service/api_service.dart';
import 'package:otp_creative_minds/core/api/dio_factory.dart';
 import 'package:otp_creative_minds/features/otp/presentation/widgets/custom_button_otp.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../generated/l10n.dart';

import '../../data/repo_impl/otp_repo_impl.dart';
 import '../cubit/otp_cubit/otp_cubit.dart';
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
        create: (context) => OtpCubit(
              otpRepo: OtpRepoImpl(apiService: ApiService(DioFactory.getDio())),
            )..resendOtp(context: context),
        child: Builder(
          builder: (context) {
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
                        BlocBuilder<OtpCubit, OtpsState>(
                          builder: (context, state) {
                            return CustomButtonCheckOtp(
                                backgroundColor: AppColors.deepPurple,
                                textColor: AppColors.primary,
                                onPressed: () {
                                  if (cubit.formKey.currentState!.validate()) {
                                    print(cubit.otpController.text);
                                    cubit.verifyOtp(
                                      context: context,
                                        countryCode: "+966",
                                        phone: "511111111");
                                  }
                                },
                                text: S.current.check);
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ///time to resend
                      const ResendTimerWidget(),
                        ///button resend
                        BlocBuilder<OtpCubit, OtpsState>(
                          buildWhen: (previous, current) {
                            return current is VerifyOtpErrorState ||

                                    current is ChangeTimerState;

                          },
                          builder: (context, state) {
                            if(state is ChangeTimerState) {
                              return  state.counter==0?
                              CustomButton(
                              backgroundColor: Colors.red,
                              textColor: Colors.black,
                              text: "resend",
                              onPressed: (){
                                OtpCubit.get(context)!.resendOtp(context: context);
                              },
                            ):const SizedBox();
                            } else if(state is VerifyOtpErrorState){
                             return CustomButton(
                                backgroundColor: Colors.red,
                                textColor: Colors.black,
                                text: "resend",
                                onPressed: (){
                                  OtpCubit.get(context)!.resendOtp(context: context);
                                },
                              );
                            }
                            return const SizedBox();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
