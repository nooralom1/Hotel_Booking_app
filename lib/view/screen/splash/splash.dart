import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/getx_controller/splash.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/splash_icon.png"),
            const CommonText(
                text: 'WanderStay',
                fColor: Colors.white,
                fWeight: FontWeight.bold,
                fSize: 45),
            const CommonText(
                text: "Find Your Stay, Your Way",
                fSize: 18,
                fWeight: FontWeight.w500,
                fColor: AppColor.yellowColor),
          ],
        ),
      ),
    );
  }
}