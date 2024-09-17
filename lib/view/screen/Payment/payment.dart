import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/getx_controller/payment.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_back_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    PaymentController controller = Get.put(PaymentController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        leading: const CommonBackButton(),
        title: const CommonText(
            text: "Payment",
            fSize: 20,
            fWeight: FontWeight.bold,
            fColor: Colors.white),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.2),
            Container(
              height: Get.height * 0.2,
              width: Get.width,
              color: Colors.blue.shade100,
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CommonText(
                      text: "Total Price",
                      fSize: 20,
                      fWeight: FontWeight.bold,
                    ),
                    CommonText(
                      text: "\$750.00",
                      fSize: 36,
                      fWeight: FontWeight.bold,
                      fColor: AppColor.primaryColor,
                    ),
                    CommonText(
                      text: "5% vst included",
                      fColor: Colors.grey,
                      fSize: 18,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.1),
            CommonButton(
                height: Get.height * 0.06,
                width: Get.width * 0.95,
                btnName: "PAY NOW",
                onTap: () async {
                  log("message");
                  await controller.sslCommerzCustomizedCall();
                  log("message");
                })
          ],
        ),
      ),
    );
  }
}
