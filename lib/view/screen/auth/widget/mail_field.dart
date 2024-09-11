import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';

class MailField extends StatelessWidget {
  const MailField({super.key, required this.mailController, this.prefixIcon});
  final TextEditingController mailController;
  final IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mailController,
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
