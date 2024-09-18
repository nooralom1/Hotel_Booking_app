import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/view/common_widget/common_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';

class BookingListViewCard extends StatelessWidget {
  const BookingListViewCard({
    super.key,
    required this.image,
    required this.name,
    required this.checkIn,
    required this.checkOut,
    required this.guest,
    required this.room,
    required this.onTap,
  });
  final String image;
  final String name;
  final String checkIn;
  final String checkOut;
  final String guest;
  final String room;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: screenHeight * 0.15,
        width: screenWidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffcce6ff)),
        child: Row(
          children: [
            SizedBox(
              width: Get.width * 0.01,
            ),
            Container(
              height: Get.height * 0.11,
              width: Get.width * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.fill)),
            ),
            SizedBox(
              width: Get.width * 0.02,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(text: name, fSize: 16, fWeight: FontWeight.bold),
                CommonText(text: checkIn, fSize: 10),
                CommonText(text: guest, fSize: 14),
              ],
            ),
            SizedBox(
              width: Get.width * 0.04,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonButton(
                    height: Get.height * 0.03,
                    width: Get.width * 0.3,
                    btnName: "Cancel",
                    fSize: 15,
                    onTap: onTap),
                CommonText(text: checkOut, fSize: 10),
                CommonText(text: room, fSize: 14),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
