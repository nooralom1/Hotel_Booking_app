import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';

class WhereField extends StatelessWidget {
  const WhereField({
    super.key,
    required this.whereController,
  });
  final TextEditingController whereController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: whereController,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.location_on_outlined,
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColor.primaryColor),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
