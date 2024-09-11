import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/getx_controller/auth/sign_in.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_back_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_loading_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/auth/sign_up.dart';
import 'package:hotel_booking_app/view/screen/auth/widget/circle_button.dart';
import 'package:hotel_booking_app/view/screen/auth/widget/mail_field.dart';
import 'package:hotel_booking_app/view/screen/auth/widget/pass_field.dart';
import 'package:hotel_booking_app/view/screen/welcome/welcome.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController controller = Get.put(SignInController());
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
                SizedBox(height: screenHeight * 0.01),
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
                const CommonText(text: "We missed you! Login to continue your"),
                const CommonText(text: "journey with us."),
                SizedBox(height: screenHeight * 0.04),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [CommonText(text: "Email")]),
                MailField(
                    mailController: controller.mailController,
                    prefixIcon: Icons.email_outlined),
                SizedBox(height: screenHeight * 0.02),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [CommonText(text: "Password")]),
                PassField(
                    passController: controller.passController,
                    prefixIcon: Icons.lock_outline_sharp),
                SizedBox(height: screenHeight * 0.03),
                const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  CommonText(
                      text: "Forgot Password?",
                      fSize: 15,
                      fWeight: FontWeight.w500,
                      fColor: AppColor.primaryColor)
                ]),
                SizedBox(height: screenHeight * 0.05),
                Obx(() => controller.isLoading.value
                    ? const CommonLoadingButton()
                    : CommonButton(
                        height: screenHeight * 0.06,
                        width: screenWidth,
                        btnName: "Sign In",
                        onTap: () async {
                          controller.isLoading.value = true;
                          var status = await controller.signInService();
                          controller.isLoading.value = false;
                          if (status) {
                            Get.offAll(() => const Welcome());
                          }
                        })),
                SizedBox(height: screenHeight * 0.04),
                const Divider(),
                SizedBox(height: screenHeight * 0.03),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const CircleButton(
                    imageUrl: "assets/image/facebook_icon.png",
                  ),
                  SizedBox(width: screenWidth * 0.05),
                  const CircleButton(imageUrl: "assets/image/google_icon.png"),
                ]),
                SizedBox(height: screenHeight * 0.06),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CommonText(
                        text: "Doesnot have an account?   ",
                        fWeight: FontWeight.w500),
                    InkWell(
                      onTap: () {
                        Get.to(() => const SignUp());
                      },
                      child: const CommonText(
                          text: "Signup",
                          fWeight: FontWeight.w500,
                          fColor: AppColor.primaryColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}