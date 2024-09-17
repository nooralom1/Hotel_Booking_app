import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/model/recommended_hotels.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_back_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/booking_summary/booking_summary.dart';
import 'package:hotel_booking_app/view/screen/hotel_details/widget/circleavatar_button.dart';
import 'package:hotel_booking_app/view/screen/hotel_details/widget/discount_show.dart';
import 'package:hotel_booking_app/view/screen/hotel_details/widget/rating_show.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({super.key, required this.id, this.recommendedHotels});
  final int id;
  final RecommendedHotels? recommendedHotels;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        leading: const CommonBackButton(),
        title: const CommonText(
            text: "Hotel Details",
            fSize: 20,
            fWeight: FontWeight.bold,
            fColor: Colors.white),
        centerTitle: true,
        actions: const [
          Icon(Icons.share, color: AppColor.primaryColor),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 20),
            child: Icon(Icons.favorite_border, color: AppColor.primaryColor),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.35,
              width: Get.width,
              child: Image.network("${recommendedHotels?.image}",
                  fit: BoxFit.fill),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                          text: "${recommendedHotels?.name}",
                          fWeight: FontWeight.bold,
                          fSize: 16),
                      const CircleAvatarButton(icon: Icons.send)
                    ],
                  ),
                  SizedBox(height: Get.height * 0.01),
                  Row(
                    children: [
                      DiscountShow(text: "${recommendedHotels?.discount}"),
                      SizedBox(width: Get.width * 0.04),
                      RatingShow(text: "${recommendedHotels?.rating}"),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.01),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined,
                          color: Colors.grey, size: 15),
                      SizedBox(width: Get.width * 0.02),
                      CommonText(
                          text: "${recommendedHotels?.location}",
                          fColor: Colors.grey,
                          fSize: 10)
                    ],
                  ),
                  SizedBox(height: Get.height * 0.02),
                  const CommonText(
                      text: "Description", fSize: 16, fWeight: FontWeight.bold),
                  SizedBox(height: Get.height * 0.01),
                  const CommonText(
                      text:
                          "Nestled in the lush tropical paradise of Jimbaran, Bali, AYANA Resort and Spa offers an enchanting escape for travelers seeking luxury, relaxation, and breathtaking ocean views",
                      fSize: 10,
                      fColor: Colors.grey),
                  SizedBox(height: Get.height * 0.02),
                  const CommonText(
                      text: "Contact Info",
                      fWeight: FontWeight.bold,
                      fSize: 16),
                  SizedBox(height: Get.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatarButton(
                              icon: Icons.person, color: Colors.blue.shade200),
                          SizedBox(width: Get.width * 0.04),
                          const Column(
                            children: [
                              CommonText(
                                  text: "John Mail", fWeight: FontWeight.bold),
                              CommonText(
                                  text: "Receptionist",
                                  fSize: 10,
                                  fColor: Colors.grey),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const CircleAvatarButton(icon: Icons.call),
                          SizedBox(width: Get.width * 0.03),
                          const CircleAvatarButton(icon: Icons.mail),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.03),
                  const CommonText(
                      text: "Gallery", fSize: 16, fWeight: FontWeight.bold),
                  SizedBox(height: Get.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CommonText(
                              text: "${recommendedHotels?.price}",
                              fWeight: FontWeight.bold,
                              fSize: 16,
                              fColor: AppColor.primaryColor),
                          const CommonText(text: " /night"),
                        ],
                      ),
                      CommonButton(
                        height: Get.height * 0.06,
                        width: Get.width * 0.53,
                        btnName: "BOOK NOW",
                        onTap: () {
                          Get.to(
                            () => BookingSummary(
                              image: '${recommendedHotels?.image}',
                              name: '${recommendedHotels?.name}',
                              location: '${recommendedHotels?.location}',
                            ),
                          );
                        },
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
