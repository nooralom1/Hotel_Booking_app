import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: screenHeight * 0.07,
        width: screenWidth * 0.17,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.primaryColor),
        child: const Center(
          child: Icon(
            Icons.filter_list_sharp,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
