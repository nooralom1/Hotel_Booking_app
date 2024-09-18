import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_back_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/Payment/payment.dart';

class BookingSummary extends StatelessWidget {
  const BookingSummary({
    super.key,
    required this.image,
    required this.name,
    required this.location,
  });
  final String image;
  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        leading: const CommonBackButton(),
        title: const CommonText(
            text: "Booking Summary",
            fSize: 20,
            fWeight: FontWeight.bold,
            fColor: Colors.white),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: Get.height * 0.02),
                  Row(
                    children: [
                      Container(
                        height: Get.height * 0.11,
                        width: Get.width * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: NetworkImage(image))),
                      ),
                      SizedBox(width: Get.width * 0.04),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonText(
                              text: name, fSize: 16, fWeight: FontWeight.bold),
                          SizedBox(height: Get.height * 0.01),
                          CommonText(
                            text: location,
                            fColor: Colors.grey,
                            fSize: 10,
                          ),
                          SizedBox(height: Get.height * 0.01),
                          const Row(
                            children: [
                              CommonText(
                                  text: "\$350 USDT",
                                  fSize: 16,
                                  fWeight: FontWeight.bold,
                                  fColor: AppColor.primaryColor),
                              CommonText(
                                  text: " /night",
                                  fSize: 16,
                                  fColor: Colors.grey),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: Get.height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CommonText(
                          text: "Booking Date", fWeight: FontWeight.bold),
                      CommonText(
                          text: DateTime.now()
                              .toString()
                              .substring(0, 10)
                              .toString(),
                          fSize: 16,
                          fColor: Colors.grey)
                    ],
                  ),
                  SizedBox(height: Get.height * 0.01),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        text: "Check-in",
                        fWeight: FontWeight.bold,
                      ),
                      CommonText(
                          text: "24-11-2023", fSize: 16, fColor: Colors.grey)
                    ],
                  ),
                  SizedBox(height: Get.height * 0.01),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        text: "Chcek-out",
                        fWeight: FontWeight.bold,
                      ),
                      CommonText(
                          text: "26-11-2023", fSize: 16, fColor: Colors.grey)
                    ],
                  ),
                  SizedBox(height: Get.height * 0.01),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        text: "Guests",
                        fWeight: FontWeight.bold,
                      ),
                      CommonText(text: "3", fSize: 16, fColor: Colors.grey)
                    ],
                  ),
                  SizedBox(height: Get.height * 0.01),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        text: "Room(s)",
                        fWeight: FontWeight.bold,
                      ),
                      CommonText(text: "1", fSize: 16, fColor: Colors.grey)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.height * 0.04),
            const Divider(),
            SizedBox(height: Get.height * 0.04),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(text: "Amount", fWeight: FontWeight.bold),
                      CommonText(
                          text: "\$350 x 2", fSize: 16, fColor: Colors.grey)
                    ],
                  ),
                  SizedBox(height: Get.height * 0.01),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(text: "Tax", fWeight: FontWeight.bold),
                      CommonText(text: "\$30", fSize: 16, fColor: Colors.grey)
                    ],
                  ),
                  SizedBox(height: Get.height * 0.01),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(text: "Total", fWeight: FontWeight.bold),
                      CommonText(text: "\$730", fSize: 16, fColor: Colors.grey)
                    ],
                  ),
                  SizedBox(height: Get.height * 0.18),
                  CommonButton(
                      height: Get.height * 0.06,
                      width: Get.width,
                      btnName: "CONTINUE TO PAYMENT",
                      onTap: () {
                        Get.off(() => const Payment());
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
