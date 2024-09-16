import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/utils/app_color.dart';

class CommonBackButton extends StatelessWidget {
  const CommonBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon:
          const Icon(Icons.arrow_back, color: AppColor.primaryColor, size: 25),
    );
  }
}
