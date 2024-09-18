import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';

class DiscountShow extends StatelessWidget {
  const DiscountShow({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.03,
      width: Get.width * 0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xffe6f3ff)),
      child: Center(
        child: CommonText(text: text, fColor: AppColor.primaryColor, fSize: 10),
      ),
    );
  }
}
