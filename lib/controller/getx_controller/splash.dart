import 'package:get/get.dart';
import 'package:hotel_booking_app/view/screen/entry/entry.dart';

class SplashController extends GetxController {
  nextPage() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.to(() => const Entry());
  }

  @override
  void onInit() {
    nextPage();
    super.onInit();
  }
}
