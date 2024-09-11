import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/api_controller/auth/sign_in.dart';

class SignInController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  Future<bool> signInService() async {
    bool status = await SignInService.signInService(
        mail: mailController.text,
        pass: passController.text);
    return status;
  }

  @override
  void onInit() {
    mailController.text = "noor@gmail.com";
    passController.text = "12345678";
    super.onInit();
  }

  @override
  void dispose() {
    mailController.dispose();
    passController.dispose();
    super.dispose();
  }
}
