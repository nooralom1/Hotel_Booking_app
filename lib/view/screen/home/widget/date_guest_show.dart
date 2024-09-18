import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';

class DateGuestShow extends StatelessWidget {
  const DateGuestShow({
    super.key,
    required this.text,
    required this.icon,
    required this.width,
  });
  final String text;
  final IconData icon;
  final double width;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Container(
      height: screenHeight * 0.042,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffcce6ff)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon, color: Colors.grey, size: 17),
            CommonText(
              text: text,
              fColor: AppColor.primaryColor,
              fSize: 12,
            )
          ],
        ),
      ),
    );
  }
}
