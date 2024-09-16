import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:hotel_booking_app/database/notification.dart';
import 'package:hotel_booking_app/model/notification.dart';

class NotificationService {
  static Future<NotificationListModel?> notificationService() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      NotificationListModel response = NotificationListModel.fromJson(
          jsonDecode(jsonEncode(NotificationList.notificationList)));
      return response;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}
