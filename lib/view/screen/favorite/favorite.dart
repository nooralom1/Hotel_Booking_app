import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/favorite/widget/favorite_list_view.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return const FavoriteListViewCard(
                  image: "assets/database/Rectangle 77.png",
                  name: "NOOR RESORT",
                  location: "Uttara, Dhaka",
                  price: "\$350 USD");
            }));
  }
}
