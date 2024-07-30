 import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_creative_minds/config/notifications/local_notification_service.dart';

import '../../../../core/utils/app_string.dart';
import '../../../../core/utils/constants.dart';
import '../bloc/App_bloc/app_bloc.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: const Text(""),
    centerTitle: true,
    leading: IconButton(icon: const Icon(Icons.notifications),onPressed: (){
       LocalNotificationService.showBasicNotification(
           const RemoteMessage(
             notification:RemoteNotification(
               title: "ahmed",
               body: "hefnawy"
             )
           )

       );
    },),
    actions: [
      IconButton(
        icon: Icon(
          Icons.dark_mode,
          color: Theme.of(context).iconTheme.color,
        ),
        onPressed: ()  {
          if (Constants.checkDarkMode(context)) {
            context.read<AppBloc>().add(const AppEvent.changeModeEvent(false));
          } else {
            context.read<AppBloc>().add(const AppEvent.changeModeEvent(true));

          }
        },
      ),
      IconButton(
        icon: Icon(
          Icons.translate_outlined,
          color: Theme.of(context).iconTheme.color,
        ),
        onPressed: () {
          if (Constants.checkArabic()) {
            context.read<AppBloc>().add(const AppEvent.changeLocaleEvent(AppStrings.englishCode));
          } else {
            context.read<AppBloc>().add(const AppEvent.changeLocaleEvent(AppStrings.arabicCode));
          }
        },
      ),
    ],
  );
}