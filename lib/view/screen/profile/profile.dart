import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/common_widget/common_text.dart';
import 'package:image_picker/image_picker.dart';

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

  File? _image;

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

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
              CircleAvatar(
                  radius: 70,
                  backgroundImage: _image == null
                      ? const AssetImage(
                          "assets/image/profile_logo-removebg-preview.png")
                      : FileImage(_image!)),
              SizedBox(
                height: screenHeight * 0.013,
              ),
              InkWell(
                onTap: () async {
                  Get.dialog(AlertDialog(
                    content: SizedBox(
                      height: Get.height * 0.15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () async {
                              await _pickImage(ImageSource.camera);
                              Get.back();
                            },
                            child: Card(
                              color: Colors.blue[100],
                              child: SizedBox(
                                height: Get.height * 0.08,
                                width: Get.width * 0.2,
                                child: const Center(
                                  child: Icon(Icons.camera_alt_outlined),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await _pickImage(ImageSource.gallery);
                              Get.back();
                            },
                            child: Card(
                              color: Colors.blue[100],
                              child: SizedBox(
                                height: Get.height * 0.08,
                                width: Get.width * 0.2,
                                child: const Center(
                                  child: Icon(Icons.image_outlined),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ));
                },
                child: Text(
                  "Change profile Photo",
                  style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      color: AppColor.primaryColor),
                ),
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
