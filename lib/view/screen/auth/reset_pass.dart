import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/getx_controller/auth/reset_pass.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_loading_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/auth/sign_in.dart';
import 'package:hotel_booking_app/view/screen/auth/widget/pass_field.dart';

class ResetPass extends StatelessWidget {
  const ResetPass({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPassController controller = Get.put(ResetPassController());
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.15),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const CommonText(
                      text: "Welcome", fSize: 25, fWeight: FontWeight.bold),
                  SizedBox(width: screenWidth * 0.03),
                  const CommonText(
                    text: "Back",
                    fSize: 25,
                    fWeight: FontWeight.bold,
                    fColor: AppColor.primaryColor,
                  )
                ]),
                SizedBox(height: screenHeight * 0.01),
                const CommonText(text: "We missed you! Login to continue your"),
                const CommonText(text: "journey with us."),
                SizedBox(height: screenHeight * 0.04),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [CommonText(text: "New Password")]),
                PassField(
                    passController: controller.newPassController,
                    prefixIcon: Icons.lock_outline_sharp),
                SizedBox(height: screenHeight * 0.02),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [CommonText(text: "Confirm Password")]),
                PassField(
                    passController: controller.confirmPassController,
                    prefixIcon: Icons.lock_outline_sharp),
                SizedBox(height: screenHeight * 0.15),
                Obx(
                  () => controller.isLoading.value
                      ? const CommonLoadingButton()
                      : CommonButton(
                          height: screenHeight * 0.06,
                          width: screenWidth,
                          btnName: "Continue",
                          onTap: () {
                            Get.offAll(() => const SignIn());
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
