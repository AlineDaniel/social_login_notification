import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../main.dart';
import '../pages/messages.page.dart';
import '../pages/settings.page.dart';

class LocalNotificationService {
  final _pluginNotification = FlutterLocalNotificationsPlugin();

  LocalNotificationService() {
    initialize();
  }

  Future<void> initialize() async {
    const initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
    );

    await _pluginNotification.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _onTapNotification,
    );
  }

  void showLocalNotification(RemoteMessage remoteMessage) {
    final notification = remoteMessage.notification;

    if (notification == null) return;

    AndroidNotificationDetails? androidNotification;

    if (notification.android != null) {
      androidNotification = AndroidNotificationDetails(
        'fase-8-teste',
        'App Fase 8',
        importance: Importance.max,
        priority: Priority.max,
        icon: notification.android!.smallIcon,
      );
    }

    final notificationDetails = NotificationDetails(
      android: androidNotification,
    );

    _pluginNotification.show(
      notification.hashCode,
      notification.title,
      notification.body,
      notificationDetails,
      payload: jsonEncode(remoteMessage.data),
    );
  }

  void _onTapNotification(NotificationResponse notification) {
    if (notification.payload != null) {
      final payload = jsonDecode(notification.payload!);
      final navigateTo = payload['navigateTo'];

      if (navigateTo != null) {
        if (navigateTo == 'messages') {
          Navigator.of(globalNavigatorKey.currentState!.context)
              .pushReplacement(
            MaterialPageRoute(builder: (_) => const MessagesPage()),
          );
        }
        if (navigateTo == 'settings') {
          Navigator.of(globalNavigatorKey.currentState!.context)
              .pushReplacement(
            MaterialPageRoute(builder: (_) => const SettingsPage()),
          );
        }
      }
    }
  }
}
