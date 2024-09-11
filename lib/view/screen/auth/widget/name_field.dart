import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';

class NameField extends StatelessWidget {
  const NameField({super.key, required this.nameController, this.prefixIcon});
  final TextEditingController nameController;
  final IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: nameController,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide:  const BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:  const BorderSide(color: AppColor.primaryColor)),
      ),
    );
  }
}
