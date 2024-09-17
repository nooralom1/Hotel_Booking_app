import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/view/screen/home/home.dart';

class BottomNavBarController extends GetxController {
  final pageController = PageController(initialPage: 2);

  RxInt index = 0.obs;
  RxInt maxCount = 3.obs;
  RxInt page = 0.obs;

  List<Widget> bottomBarPages = [
    const Icon(
      Icons.category,
      size: 50,
    ),
    const Icon(
      Icons.search,
      size: 50,
    ),
    const Home()
  ];
}