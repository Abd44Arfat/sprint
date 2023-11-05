import 'dart:convert';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class AppNotifications {
  late FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;

  static final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  Future<void> setupNotification() async {
    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const android = AndroidInitializationSettings("@mipmap/launcher_icon");
    const ios = DarwinInitializationSettings();
    const initSettings = InitializationSettings(android: android, iOS: ios);
    _flutterLocalNotificationsPlugin.initialize(
      initSettings,
      // onDidReceiveBackgroundNotificationResponse:(details)=> flutterNotificationClick( details.payload),
      // onDidReceiveNotificationResponse: (details)=> flutterNotificationClick( details.payload),
    );
    await Firebase.initializeApp();
    final settings = await _messaging.requestPermission(provisional: true);
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      _messaging.getToken().then((token) {
        log("$token");
      });
      _messaging.setForegroundNotificationPresentationOptions();
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        log("Message data:${message.data}");
        log("notification:${message.notification?.title}");
        _showLocalNotification(message);
        //! you can check here on type to do a specific action
      });
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        log('onMessageOpenedApp');
        flutterNotificationClick(json.encode(message.data));
      });
      FirebaseMessaging.onBackgroundMessage(
        _firebaseMessagingBackgroundHandler,
      );
    }
  }

  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    log("Handling a background message: ${message.messageId}");
    await Firebase.initializeApp();
    // flutterNotificationClick(json.encode(message.data));
  }

  Future<void> _showLocalNotification(RemoteMessage? message) async {
    if (message == null) return;
    final android = AndroidNotificationDetails(
      "${DateTime.now()}",
      "Default",
      priority: Priority.high,
      importance: Importance.max,
      shortcutId: DateTime.now().toIso8601String(),
    );
    const ios = DarwinNotificationDetails();
    final platform = NotificationDetails(android: android, iOS: ios);
    _flutterLocalNotificationsPlugin.show(
        DateTime.now().microsecond,
        "${message.notification?.title}",
        "${message.notification?.body}",
        platform,
        payload: json.encode(message.data));
  }

  static Future flutterNotificationClick(String? details) async {
    // final _data = json.decode("$payload");
  }
}
