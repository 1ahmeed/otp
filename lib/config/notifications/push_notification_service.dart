import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:otp_creative_minds/features/otp/data/models/verify_otp_model.dart';
import 'package:otp_creative_minds/features/otp/presentation/screens/otp_screen.dart';
import 'package:otp_creative_minds/features/otp/presentation/screens/test_screen.dart';

import '../../core/routes/app_routes.dart';
import 'local_notification_service.dart';

class PushNotificationsService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  static Future init() async {
    await messaging.requestPermission();
    await messaging.getToken().then((value) {
      log(value!);
      // sendTokenToServer(value!);
    });
    messaging.onTokenRefresh.listen((value) {
      // sendTokenToServer(value);
    });
    //back ground  & terminated
      FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
    //foreground
    handleForegroundMessage();
    //on message open app
    handleOnMessageOpenedAppTest1();

    handleOnMessageOpenedApp();
  }


  static Future<void> handleBackgroundMessage(RemoteMessage message) async {
    await Firebase.initializeApp();
    log(message.notification?.title ?? 'null');
  }

  static void handleForegroundMessage() {
    FirebaseMessaging.onMessage.listen(
          (RemoteMessage message) {
        // show local notification
        LocalNotificationService.showBasicNotification(
          message,
        );
      },
    );
  }

  static void handleOnMessageOpenedApp() {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print("*************************on message open app");
      print(message.data.toString());
      print(message.notification!.title);
      print(message.notification!.body);
      AppRouter.routers.push(AppRouter.test,extra: DataX(
        body: message.notification!.body!,
        title: message.notification!.title!)
      );
      print("************************************");
    });
  }

  ///test When the app is completely closed (not in the background)
  static void handleOnMessageOpenedAppTest1() {
    // workaround for onLaunch: When the app is completely closed (not in the background) and opened directly from the push notification
    FirebaseMessaging.instance.getInitialMessage().then((RemoteMessage? message) {
      print('getInitialMessage data: ');
    });
  }

}