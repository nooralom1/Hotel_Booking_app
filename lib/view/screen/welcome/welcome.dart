import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/getx_controller/welcome.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_loading_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/home/home.dart';
import 'package:hotel_booking_app/view/screen/welcome/widget/custom_add_remove.dart';
import 'package:hotel_booking_app/view/screen/welcome/widget/date_field.dart';
import 'package:hotel_booking_app/view/screen/welcome/widget/where_field.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    WelcomeController controller = Get.put(WelcomeController());
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset("assets/image/welcome_image.png"),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.26,
                  ),
                  Container(
                    height: screenHeight * 0.7,
                    width: screenWidth,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: screenHeight * 0.02),
                          const CommonText(
                              text: "Welcome to your next Adventure!",
                              fColor: AppColor.primaryColor,
                              fSize: 25,
                              fWeight: FontWeight.bold),
                          SizedBox(height: screenHeight * 0.005),
                          const CommonText(
                              text: "Discover the Perfect Stay with WanderStay",
                              fColor: AppColor.yellowColor,
                              fSize: 12,
                              fWeight: FontWeight.bold),
                          SizedBox(height: screenHeight * 0.02),
                          const CommonText(
                            text: "Where?",
                            fSize: 15,
                            fWeight: FontWeight.bold,
                          ),
                          WhereField(
                              whereController: controller.whereController),
                          SizedBox(height: screenHeight * 0.02),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const CommonText(
                                        text: "Check-in",
                                        fSize: 15,
                                        fWeight: FontWeight.bold,
                                      ),
                                      DateField(
                                          dateController:
                                              controller.checkInController),
                                    ]),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const CommonText(
                                        text: "Check-out",
                                        fSize: 15,
                                        fWeight: FontWeight.bold,
                                      ),
                                      DateField(
                                          dateController:
                                              controller.checkOutController)
                                    ]),
                              ]),
                          SizedBox(height: screenHeight * 0.02),
                          const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CommonText(
                                        text: "Guests",
                                        fSize: 15,
                                        fWeight: FontWeight.bold,
                                      ),
                                      CustomAddRemove()
                                    ]),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CommonText(
                                        text: "Room",
                                        fSize: 15,
                                        fWeight: FontWeight.bold,
                                      ),
                                      CustomAddRemove()
                                    ]),
                              ]),
                          SizedBox(height: screenHeight * 0.06),
                          Obx(
                            () => controller.isLoading.value
                                ? const CommonLoadingButton()
                                : CommonButton(
                                    height: screenHeight * 0.06,
                                    width: screenWidth,
                                    btnName: "FIND",
                                    onTap: () async {
                                      controller.isLoading.value = true;
                                      var status =
                                          await controller.welcomeService();
                                      controller.isLoading.value = false;
                                      if (status) {
                                        Get.offAll(() => const Home());
                                      }
                                    },
                                  ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
