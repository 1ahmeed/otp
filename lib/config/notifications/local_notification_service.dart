import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;

import '../../core/routes/app_routes.dart';
import '../../features/otp/presentation/screens/test_screen.dart';

class LocalNotificationService {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();
  static StreamController<NotificationResponse> streamController =
  StreamController();
  static onTap(NotificationResponse notificationResponse) {
    streamController.add(notificationResponse);
    // print("=========local notification ===============");
    // print(notificationResponse.id!.toString());
    // print(notificationResponse.payload!.toString());
    // AppRouter.routers.push(AppRouter.test,extra: DataX(
    //     body: notificationResponse.id!.toString(),
    //     title: notificationResponse.payload!.toString())
    // );
  }

  static Future init() async {
    InitializationSettings settings = const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );
    flutterLocalNotificationsPlugin.initialize(
      settings,
      onDidReceiveNotificationResponse: onTap,
      onDidReceiveBackgroundNotificationResponse: onTap,
    );
  }

  //basic Notification
  static void showBasicNotification(RemoteMessage message) async {
    // final http.Response image = await http
    //     .get(Uri.parse(message.notification?.android?.imageUrl ?? ''));
    // BigPictureStyleInformation bigPictureStyleInformation =
    // BigPictureStyleInformation(
    //   ByteArrayAndroidBitmap.fromBase64String(
    //     base64Encode(image.bodyBytes),
    //   ),
    //   largeIcon: ByteArrayAndroidBitmap.fromBase64String(
    //     base64Encode(image.bodyBytes),
    //   ),
    // );
    AndroidNotificationDetails android = AndroidNotificationDetails(
      'channel_id',
      'channel_name',
      importance: Importance.max,
      priority: Priority.high,
      // styleInformation: bigPictureStyleInformation,
      playSound: true,
      sound: RawResourceAndroidNotificationSound(
          'assets_sound.wav'.split('.').first),
    );
    NotificationDetails details = NotificationDetails(
      android: android,
    );
    await flutterLocalNotificationsPlugin.show(
      Random().nextInt(1000000000),
      // 0,
      message.notification?.title,
      message.notification?.body,
      details,
    );
  }
}