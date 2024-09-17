import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> userDetails = [
    "Mr. Noor_Alom",
    "noor@gmail.com",
    "Change Password",
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: const CommonText(
            text: "Profile",
            fSize: 20,
            fWeight: FontWeight.bold,
            fColor: Colors.white),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 70,
                child: Center(
                  child: Image(
                      image: AssetImage(
                          "assets/image/profile_logo-removebg-preview.png")),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.013,
              ),
              Text(
                "Change profile Photo",
                style: TextStyle(
                    fontSize: screenWidth * 0.06, color: AppColor.primaryColor),
              ),
              SizedBox(
                height: screenHeight * 0.07,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: userDetails.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: screenHeight * 0.065,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xffcce6ff)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            children: [
                              Text(
                                userDetails[index],
                                style: TextStyle(
                                    fontSize: screenWidth * 0.05,
                                    color: AppColor.primaryColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
