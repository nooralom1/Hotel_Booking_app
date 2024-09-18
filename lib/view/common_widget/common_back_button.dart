import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonBackButton extends StatelessWidget {
  const CommonBackButton({
    super.key, this.color,
  });
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon:
           Icon(Icons.arrow_back, color: color?? Colors.white, size: 25),
    );
  }
}
