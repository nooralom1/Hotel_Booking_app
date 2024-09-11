import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';

class PassField extends StatelessWidget {
  const PassField({super.key, required this.passController, this.prefixIcon});
  final TextEditingController passController;
  final IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passController,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColor.primaryColor)),
      ),
    );
  }
}
