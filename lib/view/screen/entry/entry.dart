import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/auth/sign_in.dart';
import 'package:hotel_booking_app/view/screen/auth/sign_up.dart';

class Entry extends StatelessWidget {
  const Entry({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Image.asset("assets/image/entry_image1.png")
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Image.asset("assets/image/entry_image2.png")),
                  ]),
                  Padding(
                      padding: const EdgeInsets.only(top: 340),
                      child: Image.asset("assets/image/entry_image3.png")),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              const CommonText(
                  text: "Unleash Your Inner Traveller",
                  fColor: AppColor.primaryColor,
                  fWeight: FontWeight.bold,
                  fSize: 24),
              const CommonText(
                  text: "Your passport to a world of extraordinary hotel",
                  fWeight: FontWeight.w500),
              const CommonText(
                  text: "experiences. Join us today and unlock a realm",
                  fWeight: FontWeight.w500),
              const CommonText(
                  text: "of comfort, luxury, and adventure.",
                  fWeight: FontWeight.w500),
              SizedBox(height: screenHeight * 0.04),
              CommonButton(
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.9,
                  btnName: "Start Exploring",
                  onTap: () {
                    Get.to(() => const SignUp());
                  }),
              SizedBox(height: screenHeight * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CommonText(
                      text: "Already have an account?   ",
                      fWeight: FontWeight.w500),
                  InkWell(
                    onTap: () {
                      Get.to(() => const SignIn());
                    },
                    child: const CommonText(
                        text: "Login",
                        fWeight: FontWeight.w500,
                        fColor: AppColor.primaryColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
