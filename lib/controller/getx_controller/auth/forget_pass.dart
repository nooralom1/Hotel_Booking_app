import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgetPassController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController mailController = TextEditingController();

  @override
  void onInit() {
    mailController.text = "noor@gmail.com";
    super.onInit();
  }

  @override
  void dispose() {
    mailController.dispose();
    super.dispose();
  }
}
