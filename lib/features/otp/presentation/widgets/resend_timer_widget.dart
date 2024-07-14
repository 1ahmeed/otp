import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/utils/styles.dart';
import '../../../../generated/l10n.dart';
import '../cubit/otp_cubit/otp_cubit.dart';

class ResendTimerWidget extends StatelessWidget {
  const ResendTimerWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return   BlocBuilder<OtpCubit, OtpState>(
      buildWhen: (previousState,currentState)=> previousState != currentState || currentState is ChangeTimerState,
  builder: (context, state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(S.current.resendAfter,
            style: Theme.of(context).textTheme.displaySmall),
        const SizedBox(
          width: 10,
        ),
        if(state is ChangeTimerState)
          Text("${state.counter} ${S.of(context).seconds}",
              style: Theme.of(context).textTheme.headlineLarge,
          )],
    );
  },
);
  }
}
