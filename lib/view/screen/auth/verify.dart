import 'dart:core';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/getx_controller/auth/verification.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_back_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_loading_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/auth/reset_pass.dart';
import 'package:hotel_booking_app/view/screen/auth/widget/custom_timer.dart';
import 'package:hotel_booking_app/view/screen/auth/widget/verify_field.dart';

class Verify extends StatelessWidget {
  const Verify({super.key});

  @override
  Widget build(BuildContext context) {
    VerificationController controller = Get.put(VerificationController());
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [CommonBackButton()]),
                SizedBox(height: screenHeight * 0.05),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const CommonText(
                      text: "Verify", fSize: 25, fWeight: FontWeight.bold),
                  SizedBox(width: screenWidth * 0.03),
                  const CommonText(
                      text: "Account",
                      fSize: 25,
                      fWeight: FontWeight.bold,
                      fColor: AppColor.primaryColor),
                ]),
                const CommonText(
                    text: "Please  enter the verification code sent to"),
                const CommonText(text: "noor@gmail.com"),
                SizedBox(height: screenHeight * 0.05),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      VerifyField(verifyController: controller.num1Controller),
                      VerifyField(verifyController: controller.num2Controller),
                      VerifyField(verifyController: controller.num3Controller),
                      VerifyField(verifyController: controller.num4Controller),
                    ]),
                SizedBox(height: screenHeight * 0.05),
                const CustomTimer(),
                SizedBox(height: screenHeight * 0.02),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonText(
                        text: "Didn’t receive code?   ",
                        fWeight: FontWeight.w500),
                    CommonText(
                        text: "Resend again",
                        fWeight: FontWeight.w500,
                        fColor: AppColor.primaryColor),
                  ],
                ),
                SizedBox(height: screenHeight * 0.05),
                Obx(
                  () => controller.isLoading.value
                      ? const CommonLoadingButton()
                      : CommonButton(
                          height: screenHeight * 0.06,
                          width: screenWidth,
                          btnName: "Verify",
                          onTap: () async {
                            controller.isLoading.value = true;
                            var status = await controller.verificationService();
                            controller.isLoading.value = false;
                            if (status) {
                              Get.off(() => const ResetPass());
                            }
                          },
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}