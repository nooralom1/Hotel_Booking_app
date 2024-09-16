import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/getx_controller/auth/forget_pass.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_back_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_loading_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/auth/verify.dart';
import 'package:hotel_booking_app/view/screen/auth/widget/mail_field.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPassController controller = Get.put(ForgetPassController());
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
                    children: [
                      CommonBackButton(),
                    ]),
                SizedBox(height: screenHeight * 0.05),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const CommonText(
                      text: "Forget", fSize: 25, fWeight: FontWeight.bold),
                  SizedBox(width: screenWidth * 0.03),
                  const CommonText(
                    text: "Password",
                    fSize: 25,
                    fWeight: FontWeight.bold,
                    fColor: AppColor.primaryColor,
                  )
                ]),
                SizedBox(height: screenHeight * 0.1),
                const CommonText(text: "Please enter your email account"),
                const CommonText(text: "to reset password"),
                SizedBox(height: screenHeight * 0.04),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [CommonText(text: "Email")]),
                MailField(
                    mailController: controller.mailController,
                    prefixIcon: Icons.email_outlined),
                SizedBox(height: screenHeight * 0.15),
                Obx(
                  () => controller.isLoading.isTrue
                      ? const CommonLoadingButton()
                      : CommonButton(
                          height: screenHeight * 0.06,
                          width: screenWidth,
                          btnName: "Continue",
                          onTap: () {
                            Get.offAll(() => const Verify());
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
