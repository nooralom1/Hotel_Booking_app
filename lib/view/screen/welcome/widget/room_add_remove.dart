import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/getx_controller/welcome.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';

class RoomAddRemove extends StatelessWidget {
  const RoomAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WelcomeController controller = Get.put(WelcomeController());
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Container(
      height: screenHeight * 0.07,
      width: screenWidth * 0.433,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Center(
          child: Obx(()=>Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    if (controller.roomCounter.value > 1) {
                      controller.roomCounter.value--;
                    }
                  },
                  icon: const Icon(Icons.remove)),
              CommonText(
                text: controller.roomCounter.value.toString(),
                fSize: 20,
              ),
              IconButton(
                  onPressed: () {
                    controller.roomCounter.value++;
                  },
                  icon: const Icon(Icons.add)),
            ],
          ))),
    );
  }
}
