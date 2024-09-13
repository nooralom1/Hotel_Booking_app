import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';

class BusinessAccommodateView extends StatelessWidget {
  const BusinessAccommodateView({
    super.key,
    required this.image,
    required this.onTap,
  });

  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: screenWidth * 0.6,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: screenHeight * 0.18,
                  width: screenWidth * 0.58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: NetworkImage(image),fit: BoxFit.fill)
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: screenHeight * 0.03,
                      width: screenWidth * 0.18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffe6f3ff)),
                      child: const Center(
                          child: CommonText(
                            text: "Fast Wi-Fi",
                            fColor: AppColor.primaryColor,
                            fSize: 10,
                          )),
                    ),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Container(
                      height: screenHeight * 0.03,
                      width: screenWidth * 0.32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffe6f3ff)),
                      child: const Center(
                        child: CommonText(
                          text: "AC Conference Rooms",
                          fSize: 10,
                          fColor: AppColor.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
