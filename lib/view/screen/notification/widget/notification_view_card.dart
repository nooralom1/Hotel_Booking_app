import 'package:flutter/cupertino.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';

class NotificationViewCard extends StatelessWidget {
  const NotificationViewCard({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: screenHeight * 0.15,
        width: screenWidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffcce6ff)),
        child:  Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CommonText(
              text:
              text,
              maxLines: 3,
              fSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
