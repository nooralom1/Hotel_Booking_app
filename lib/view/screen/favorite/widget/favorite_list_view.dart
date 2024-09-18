import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/getx_controller/favorite_list.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';

class FavoriteListViewCard extends StatelessWidget {
  const FavoriteListViewCard({
    super.key,
    required this.image,
    required this.name,
    required this.location,
    required this.price,
    required this.onTap,
  });
  final String image;
  final String name;
  final String location;
  final String price;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    FavoriteListController controller = Get.put(FavoriteListController());
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: onTap,
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
                        image: NetworkImage(image), fit: BoxFit.fill)),
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
                  Obx(
                    () => Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              if (controller.counter.value > 1) {
                                controller.counter.value--;
                              }
                            },
                            icon: const Icon(Icons.remove)),
                        CommonText(text: controller.counter.value.toString()),
                        IconButton(
                            onPressed: () {
                              controller.counter.value++;
                            },
                            icon: const Icon(Icons.add)),
                      ],
                    ),
                  ),
                  const Icon(Icons.delete)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
