import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_back_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/favorite/widget/favorite_list_view.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const CommonBackButton(),
          title: const CommonText(
              text: "Favorites",
              fSize: 20,
              fWeight: FontWeight.bold,
              fColor: AppColor.primaryColor),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return FavoriteListViewCard(
                  image: "assets/database/Rectangle 77.png",
                  name: "NOOR RESORT",
                  location: "Uttara, Dhaka",
                  price: "\$350 USD");
            }));
  }
}
