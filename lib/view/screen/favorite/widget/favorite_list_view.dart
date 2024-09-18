import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';

class FavoriteListViewCard extends StatelessWidget {
  const FavoriteListViewCard({
    super.key,
    required this.image,
    required this.name,
    required this.location,
    required this.price,
  });
  final String image;
  final String name;
  final String location;
  final String price;

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: Get.width * 0.000001,
            ),
            Container(
              height: Get.height * 0.11,
              width: Get.width * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonText(text: name, fSize: 16, fWeight: FontWeight.bold),
                SizedBox(height: Get.height * 0.01),
                CommonText(
                  text: location,
                  fColor: Colors.grey,
                  fSize: 10,
                ),
                SizedBox(height: Get.height * 0.01),
                Row(
                  children: [
                    CommonText(
                        text: price,
                        fSize: 16,
                        fWeight: FontWeight.bold,
                        fColor: AppColor.primaryColor),
                    const CommonText(
                        text: " /night", fSize: 16, fColor: Colors.grey),
                  ],
                ),
                SizedBox(height: Get.height * 0.01),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.remove)),
                    const CommonText(text: "1"),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                  ],
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.delete))
              ],
            )
          ],
        ),
      ),
    );
  }
}
