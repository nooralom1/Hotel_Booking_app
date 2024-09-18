import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/getx_controller/favorite_list.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/booking_summary/booking_summary.dart';
import 'package:hotel_booking_app/view/screen/favorite/widget/favorite_list_view.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    FavoriteListController controller = Get.put(FavoriteListController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: const CommonText(
            text: "Favorites",
            fSize: 20,
            fWeight: FontWeight.bold,
            fColor: Colors.white),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Obx(
          () => controller.isLoading.isFalse
              ? ListView.builder(
                  itemCount: controller.favoriteList.length,
                  itemBuilder: (context, index) {
                    return FavoriteListViewCard(
                      image: "${controller.favoriteList[index].image}",
                      name: "${controller.favoriteList[index].name}",
                      location: "${controller.favoriteList[index].location}",
                      price: "${controller.favoriteList[index].price}",
                      onTap: () {
                        Get.to(() => BookingSummary(
                            image: "${controller.favoriteList[index].image}",
                            name: "${controller.favoriteList[index].name}",
                            location:
                                "${controller.favoriteList[index].location}"));
                      },
                    );
                  },
                )
              : const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
