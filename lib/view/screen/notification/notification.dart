import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/getx_controller/notification.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_back_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/notification/widget/notification_view_card.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    NotificationController controller = Get.put(NotificationController());
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Row(children: [
                const CommonBackButton(
                  color: AppColor.primaryColor,
                ),
                SizedBox(
                  width: screenWidth * 0.02,
                ),
                const CommonText(
                  text: "Notification",
                  fWeight: FontWeight.bold,
                  fSize: 18,
                )
              ]),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Obx(() => controller.isLoading.isFalse
                  ? Expanded(
                      child: ListView.builder(
                          itemCount: controller.notification.length,
                          itemBuilder: (context, index) {
                            return NotificationViewCard(
                                text:
                                    "${controller.notification[index].notification}");
                          }))
                  : const Center(
                      child: CircularProgressIndicator(),
                    ))
            ],
          ),
        ),
      ),
    );
  }
}
