import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ResetPassController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController newPassController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  @override
  void onInit() {
    newPassController.text = "12345678";
    confirmPassController.text = "12345678";
    super.onInit();
  }

  @override
  void dispose() {
    newPassController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }
}
