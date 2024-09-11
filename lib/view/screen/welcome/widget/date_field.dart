import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';

class DateField extends StatelessWidget {
  const DateField({
    super.key, required this.dateController,
  });
  final TextEditingController dateController;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: screenWidth*0.433,
      child: TextField(
        controller: dateController,
        decoration: InputDecoration(
          suffixIcon: const Icon(
            Icons.calendar_month_sharp,
            color: Colors.grey,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide:
              const BorderSide(color: Colors.grey),
              borderRadius:
              BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: AppColor.primaryColor),
              borderRadius:
              BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
