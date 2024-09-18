import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';

class CircleAvatarButton extends StatelessWidget {
  const CircleAvatarButton({
    super.key,
    this.color,
    required this.icon,
  });
  final Color? color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: color ?? AppColor.primaryColor,
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
