import 'package:flutter/material.dart';
import 'package:hotel_booking_app/view/common_widget/common_back_button.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:hotel_booking_app/view/screen/notification/widget/notification_view_card.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Row(children: [
                const CommonBackButton(),
                SizedBox(
                  width: screenWidth * 0.02,
                ),
                const CommonText(
                  text: "Notification",
                  fWeight: FontWeight.bold,
                  fSize: 18,
                )
              ]),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const NotificationViewCard(
                          text: "Horem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum,"
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}