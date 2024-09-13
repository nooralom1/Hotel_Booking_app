import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/controller/getx_controller/home.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'dropdown_button.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({
    super.key,
  });

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CommonText(text: "Cancel", fSize: 12, fWeight: FontWeight.w600),
                CommonText(
                    text: "Filter",
                    fWeight: FontWeight.bold,
                    fSize: 20,
                    fColor: AppColor.primaryColor),
                CommonText(text: "Reset", fWeight: FontWeight.bold),
              ],
            ),
            const CommonText(
                text: "Sort By", fSize: 20, fWeight: FontWeight.bold),
            CommonDropDownButton(
              hintText: "\$ - \$\$Price Lower to Higher",
              value: controller.selectedValue.value.isEmpty
                  ? null
                  : controller.selectedValue.value,
              iSize: 35,
              items: controller.value.map((String doctor) {
                return DropdownMenuItem<String>(
                    value: doctor, child: Text(doctor));
              }).toList(),
              onChanged: (value) {
                controller.selectedValue.value = value!;
              },
            ),
            const CommonText(
                text: "Ratings", fWeight: FontWeight.bold, fSize: 20),
            SizedBox(
              height: screenHeight * 0.06,
              child: ListView.builder(
                physics: const PageScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20.5),
                    child: Container(
                      width: screenWidth * 0.13,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CommonText(text: "${index + 1}"),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const CommonText(
                text: "Price Ranges", fSize: 20, fWeight: FontWeight.bold),
            RangeSlider(
              activeColor: AppColor.primaryColor,
              values: controller.currentRangeValues,
              min: 0,
              max: 1000,
              divisions: 10,
              labels: RangeLabels(
                  controller.currentRangeValues.start.round().toString(),
                  controller.currentRangeValues.end.round().toString()),
              onChanged: (RangeValues values) {
                setState(
                  () {
                    controller.currentRangeValues = values;
                  },
                );
              },
            ),
            const CommonText(text: "\$90-\$350", fWeight: FontWeight.bold),
            const CommonText(
                text: "Facilities", fWeight: FontWeight.bold, fSize: 20),
            CommonButton(
              height: screenHeight * 0.06,
              width: screenWidth,
              btnName: "APPLY",
              onTap: () {
                Get.back();
              },
            )
          ],
        ),
      ),
    );
  }
}
