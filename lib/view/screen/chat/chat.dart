import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: const CommonText(
            text: "Booking List",
            fSize: 20,
            fWeight: FontWeight.bold,
            fColor: Colors.white),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/chat.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }
}
