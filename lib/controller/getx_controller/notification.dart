import 'dart:developer';

import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/api_controller/notification.dart';
import 'package:hotel_booking_app/model/notification.dart';

class NotificationController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<Notifications> notification = <Notifications>[].obs;

  getNotifications() async {
    isLoading.value = true;
    var data = await NotificationService.notificationService();
    notification.value = data?.notifications ?? [];
    isLoading.value = false;
  }

  @override
  void onInit() {
    getNotifications();
    super.onInit();
  }
}