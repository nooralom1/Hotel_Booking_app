import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/view/screen/notification/notification.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Get.to(() => const NotificationPage());
        },
        icon: const Icon(Icons.notifications_active));
  }
}
