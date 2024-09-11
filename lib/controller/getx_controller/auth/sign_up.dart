import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/api_controller/auth/sign_up.dart';

class SignUpController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  Future<bool> signUpService() async {
    bool status = await SignUpService.signUpService(
        name: nameController.text,
        mail: mailController.text,
        pass: passController.text);
    return status;
  }

  @override
  void onInit() {
    nameController.text = "Noor Alam";
    mailController.text = "noor@gmail.com";
    passController.text = "12345678";
    super.onInit();
  }

  @override
  void dispose() {
    mailController.dispose();
    passController.dispose();
    nameController.dispose();
    super.dispose();
  }
}
