import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';

class SearchField extends StatelessWidget {
  const SearchField(
      {super.key,
      this.prefixIcon,
      required this.searchController,
      this.hintText,
      required this.width});

  final TextEditingController searchController;
  final IconData? prefixIcon;
  final String? hintText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        controller: searchController,
        decoration: InputDecoration(
          hintText: hintText ?? "Search Hotel By Name",
          prefixIcon: Icon(prefixIcon ?? Icons.search),
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
