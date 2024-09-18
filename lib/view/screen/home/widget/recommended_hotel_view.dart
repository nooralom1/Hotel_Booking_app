import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';

class RecommendedHotelView extends StatelessWidget {
  const RecommendedHotelView({
    super.key,
    required this.image,
    required this.discount,
    required this.rating,
    required this.name,
    required this.location,
    required this.price,
    required this.onTap,
  });
  final String image;
  final String discount;
  final String rating;
  final String name;
  final String location;
  final String price;
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
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: screenHeight * 0.18,
                    width: screenWidth * 0.58,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(image), fit: BoxFit.fill)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: screenHeight * 0.03,
                            width: screenWidth * 0.15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xffe6f3ff)),
                            child: Center(
                                child: CommonText(
                              text: discount,
                              fColor: AppColor.primaryColor,
                              fSize: 10,
                            )),
                          ),
                          SizedBox(
                            width: screenWidth * 0.02,
                          ),
                          Container(
                            height: screenHeight * 0.03,
                            width: screenWidth * 0.15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xffe6f3ff)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.01,
                                  ),
                                  CommonText(
                                    text: rating,
                                    fSize: 12,
                                    fColor: AppColor.primaryColor,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.favorite_border,
                        color: AppColor.primaryColor,
                      )
                    ],
                  ),
                  CommonText(
                    text: name,
                    fSize: 14,
                    fWeight: FontWeight.bold,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 15,
                      ),
                      CommonText(
                        text: location,
                        fSize: 12,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      CommonText(
                        text: price,
                        fSize: 12,
                        fWeight: FontWeight.bold,
                        fColor: AppColor.primaryColor,
                      ),
                      const CommonText(text: " /night"),
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
