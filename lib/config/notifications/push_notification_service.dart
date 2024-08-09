import 'dart:async';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:otp_creative_minds/config/route/app_router.dart';
import 'package:otp_creative_minds/features/otp/presentation/screens/test_screen.dart';


 import '../../injectable_container.dart';
import 'local_notification_service.dart';

class PushNotificationsService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static StreamController<RemoteMessage> streamController =
  StreamController();
  // static onTap(NotificationResponse notificationResponse) {
  //
  // }
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

    handleNotificationWhenAppKilled();
    //on message open app
    handleOnMessageOpenedApp();
  }


  static Future<void> handleBackgroundMessage(RemoteMessage message) async {
    await Firebase.initializeApp();
    log(message.notification?.title ?? 'null');
  }

  static Future<void> handleForegroundMessage() async {
   FirebaseMessaging.onMessage.listen(
          (RemoteMessage message) {
        LocalNotificationService.showBasicNotification(
          message,
        );
      },
    );
  }

  static Future<void> handleOnMessageOpenedApp() async {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print("*************************on message open app");
      print(message.data.toString());
      print(message.notification!.title);
      print(message.notification!.body);
      getIt<AppRouter>().push(TestNotificationRoute());
      print("************************************");
    });
  }

  static Future<void> handleNotificationWhenAppKilled() async {
    // workaround for onLaunch: When the app is completely closed (not in the background) and opened directly from the push notification
    FirebaseMessaging.instance.getInitialMessage().then((RemoteMessage? message) {
      if (message != null) {
        print("app is terminated");
        getIt<AppRouter>().push(TestNotificationRoute());
      }

    });
  }

}