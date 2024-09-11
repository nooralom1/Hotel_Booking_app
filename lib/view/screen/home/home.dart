import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/getx_controller/home.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/common_widget/search_field.dart';
import 'package:hotel_booking_app/view/screen/home/widget/business_accommodates_view.dart';
import 'package:hotel_booking_app/view/screen/home/widget/date_guest_show.dart';
import 'package:hotel_booking_app/view/screen/home/widget/filter_button.dart';
import 'package:hotel_booking_app/view/screen/home/widget/notification.dart';
import 'package:hotel_booking_app/view/screen/home/widget/recommended_hotel_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.01),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(text: "Location", fWeight: FontWeight.w600),
                      NotificationButton()
                    ]),
                const CommonText(
                    text: "Bali, Indonesia",
                    fSize: 20,
                    fWeight: FontWeight.bold,
                    fColor: AppColor.primaryColor),
                SizedBox(height: screenHeight * 0.03),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  DateGuestShow(
                      icon: Icons.calendar_month,
                      text: "24 OCT-26 OCT",
                      width: screenWidth * 0.4),
                  SizedBox(width: screenWidth * 0.03),
                  DateGuestShow(
                      text: "3 guests",
                      width: screenWidth * 0.3,
                      icon: Icons.person_outline)
                ]),
                SizedBox(height: screenHeight * 0.02),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SearchField(
                          searchController: controller.searchController,
                          width: screenWidth * 0.7),
                      FilterButton(
                        onTap: () {},
                      )
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                const CommonText(
                    text: "Recommended Hotels",
                    fSize: 20,
                    fColor: AppColor.primaryColor,
                    fWeight: FontWeight.bold),
                SizedBox(height: screenHeight * 0.01),
                SizedBox(
                    height: screenHeight * 0.35,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return RecommendedHotelView(
                            image: "assets/database/Rectangle 53.png",
                            discount: '10% OFF',
                            rating: "4.5",
                            name: "AYANA Resort",
                            location: "Bali, Indonesia",
                            price: "\$200 - \$500 USD",
                            onTap: () {},
                          );
                        })),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                const CommonText(
                  text: "Business Accommodates",
                  fColor: AppColor.primaryColor,
                  fWeight: FontWeight.bold,
                  fSize: 20,
                ),
                SizedBox(height: screenHeight * 0.01),
                SizedBox(
                  height: screenHeight * 0.24,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return BusinessAccommodateView(
                          image: "assets/database/Rectangle 60.png",
                          onTap: () {},
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
