import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/api_controller/auth/verification.dart';

class VerificationController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  TextEditingController num3Controller = TextEditingController();
  TextEditingController num4Controller = TextEditingController();

  Future<bool> verificationService() async {
    bool status = await VerificationService.verificationService(
        num1: num1Controller.text,
        num2: num2Controller.text,
        num3: num3Controller.text,
        num4: num4Controller.text);
    return status;
  }

  @override
  void onInit() {
    num1Controller.text = "9";
    num2Controller.text = "6";
    num3Controller.text = "2";
    num4Controller.text = "5";
    super.onInit();
  }

  @override
  void dispose() {
    num1Controller.dispose();
    num2Controller.dispose();
    num3Controller.dispose();
    num4Controller.dispose();
    super.dispose();
  }
}
