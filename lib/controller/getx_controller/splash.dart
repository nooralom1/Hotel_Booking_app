import 'package:get/get.dart';
import 'package:hotel_booking_app/view/screen/welcome/welcome.dart';

class SplashController extends GetxController{
  
  nextPage()async{
    await Future.delayed(const Duration(seconds: 2));
    Get.to(()=>const Welcome());
  }

  @override
  void onInit() {
    nextPage();
    super.onInit();
  }
}