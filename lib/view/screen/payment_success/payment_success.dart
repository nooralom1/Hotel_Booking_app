import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/home/home.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height:Get.height*0.04),
            Image.asset("assets/image/payment_success.png"),
            SizedBox(height:Get.height*0.04),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  const CommonText(
                    text: "Congratulations!!",
                    fSize: 24,
                    fWeight: FontWeight.bold,
                    fColor: AppColor.primaryColor,
                  ),
                  SizedBox(height:Get.height*0.01),
                  const CommonText(
                    text: "Your hotel stay is secured.",
                    fSize: 20,
                    fColor: Colors.grey,
                  ),
                  const CommonText(
                    text: "Counting down to your",
                    fSize: 20,
                    fColor: Colors.grey,
                  ),
                  const CommonText(
                    text: "dream vacation!",
                    fSize: 20,
                    fColor: Colors.grey,
                  ),
                  SizedBox(height:Get.height*0.04),
                  CommonButton(
                      height: Get.height * 0.06,
                      width: Get.width,
                      btnName: "GO HOME",
                      onTap: () {
                        Get.to(() => const Home());
                      }),
                  SizedBox(height:Get.height*0.03),
                  const CommonText(
                      text: "VIEW E-RECIEPT",
                      fSize: 15,
                      fColor: AppColor.primaryColor,
                      fWeight: FontWeight.bold)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
