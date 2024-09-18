import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/api_controller/welcome.dart';

class WelcomeController extends GetxController {
  TextEditingController whereController = TextEditingController();
  TextEditingController checkInController = TextEditingController();
  TextEditingController checkOutController = TextEditingController();
  RxBool isLoading = false.obs;
  RxInt guestCounter = 1.obs;
  RxInt roomCounter = 1.obs;

  Future<bool> welcomeService() async {
    bool status = await WelcomeService.welcomeService(
        location: whereController.text,
        checkIn: checkInController.text,
        checkOut: checkOutController.text);
    return status;
  }

  @override
  void onInit() {
    whereController.text = "Ex. New York";
    checkInController.text = "DD/MM/YY";
    checkOutController.text = "DD/MM/YY";
    super.onInit();
  }

  @override
  void dispose() {
    whereController.dispose();
    checkInController.dispose();
    checkOutController.dispose();
    super.dispose();
  }
}
