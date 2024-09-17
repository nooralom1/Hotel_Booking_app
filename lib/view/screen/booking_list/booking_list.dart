import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/booking_list/widget/booking_list_view.dart';

class BookingList extends StatelessWidget {
  const BookingList({super.key});

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
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return BookingListViewCard(
            image: "assets/database/Rectangle 77.png",
            name: "NOOR RESORT",
            checkIn: "Check-in: 24-11-24",
            checkOut: "Check-out: 26-11-24",
            guest: "Guest: 3",
            room: "Room: 1",
            onTap: () {},
          );
        },
      ),
    );
  }
}
