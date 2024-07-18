import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:otp_creative_minds/features/otp/presentation/cubit/otp_cubit/otp_cubit.dart';

import '../../../../generated/l10n.dart';

class ResendTimerWidget extends StatefulWidget {
  const ResendTimerWidget({super.key});

  @override
  State<ResendTimerWidget> createState() => _ResendTimerWidgetState();
}

class _ResendTimerWidgetState extends State<ResendTimerWidget> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OtpCubit, OtpsState>(
      listener: (context, state) {
        if(state is ResendOtpSuccessState ){
          context.read<OtpCubit>().startTimer();
        }
      },
      buildWhen: (previousState, currentState) {
        return currentState is ChangeTimerState
        ;
      },
      builder: (context, state) {
    if (state is ResendOtpLoadingState) {
          return const CircularProgressIndicator();
        } else if(state is ChangeTimerState){
          return state.counter!=0? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(S.current.resendAfter,
                  style: Theme.of(context).textTheme.displaySmall),
              const SizedBox(
                width: 10,
              ),
              Text(
                "${state.counter} ${S.of(context).seconds}",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ):const SizedBox() ;
        }
        return const SizedBox();
      },
    );
  }
}
