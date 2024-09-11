import 'package:flutter/material.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';

class CustomAddRemove extends StatelessWidget {
  const CustomAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Container(
      height: screenHeight * 0.07,
      width: screenWidth * 0.433,
      decoration: BoxDecoration(
          borderRadius:
          BorderRadius.circular(10),
          border:
          Border.all(color: Colors.grey)),
      child: const Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.remove),
          CommonText(text: "1",fSize: 20,),
          Icon(Icons.add)
        ],),),
    );
  }
}
