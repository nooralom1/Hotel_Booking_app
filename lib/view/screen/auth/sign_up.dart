import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/getx_controller/auth/sign_up.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_loading_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/auth/widget/mail_field.dart';
import 'package:hotel_booking_app/view/screen/auth/widget/name_field.dart';
import 'package:hotel_booking_app/view/screen/auth/widget/pass_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController controller = Get.put(SignUpController());
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppColor.primaryColor,
                      size: 25,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CommonText(
                    text: "Create",
                    fSize: 25,
                    fWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    width: screenWidth * 0.03,
                  ),
                  const CommonText(
                    text: "Account",
                    fSize: 25,
                    fWeight: FontWeight.bold,
                    fColor: AppColor.primaryColor,
                  ),
                ],
              ),
              const CommonText(text: "Fill your information below or register with"),
              const CommonText(text: "your social account."),
              SizedBox(height: screenHeight*0.04,),
              NameField(
                nameController: controller.nameController,
                prefixIcon: Icons.person_outline,
              ),
              SizedBox(height: screenHeight*0.02,),
              MailField(
                mailController: controller.mailController,
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(height: screenHeight*0.02,),
              PassField(
                passController: controller.passController,
                prefixIcon: Icons.lock_outline_sharp,
              ),
              SizedBox(height: screenHeight*0.06,),
              Obx(() => controller.isLoading.isFalse
                  ? CommonButton(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.9,
                      btnName: "Continue",
                      onTap: () {})
                  : const CommonLoadingButton()),
              SizedBox(height: screenHeight*0.05,),
              const Divider(),
              SizedBox(height: screenHeight*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    child: Center(child: Icon(Icons.access_time_rounded)),
                  ),
                  SizedBox(width: screenWidth*0.04,),
                  const CircleAvatar(
                    radius: 30,
                    child: Center(child: Icon(Icons.access_time_rounded)),
                  ),
                ],
              ),
              SizedBox(height: screenHeight*0.08,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CommonText(
                    text: "Already have an account?   ",
                    fWeight: FontWeight.w500,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const CommonText(
                      text: "Login",
                      fWeight: FontWeight.w500,
                      fColor: AppColor.primaryColor,
                    ),
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
