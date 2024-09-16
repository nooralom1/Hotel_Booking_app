import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';

class VerifyField extends StatelessWidget {
  const VerifyField({
    super.key,
    required this.verifyController,
  });
  final TextEditingController verifyController;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return SizedBox(
      height: screenHeight * 0.07,
      width: screenWidth * 0.15,
      child: TextField(
        controller: verifyController,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColor.primaryColor)),
        ),
      ),
    );
  }
}
