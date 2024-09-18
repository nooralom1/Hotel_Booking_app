import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/getx_controller/booking_list.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/booking_list/widget/booking_list_view.dart';

class BookingList extends StatelessWidget {
  const BookingList({super.key});

  @override
  Widget build(BuildContext context) {
    BookingListController controller = Get.put(BookingListController());
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
        body: Obx(() => controller.isLoading.isFalse
            ? Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListView.builder(
                  itemCount: controller.bookingList.length,
                  itemBuilder: (context, index) {
                    return BookingListViewCard(
                      image: "${controller.bookingList[index].image}",
                      name: "${controller.bookingList[index].name}",
                      checkIn:
                          "Check-in: ${controller.bookingList[index].checkIn}",
                      checkOut:
                          "Check-out: ${controller.bookingList[index].checkOut}",
                      guest: "Guest: ${controller.bookingList[index].guest}",
                      room: "Room: ${controller.bookingList[index].room}",
                      onTap: () {
                        Get.snackbar("message", "Canceled");
                      },
                    );
                  },
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              )));
  }
}
