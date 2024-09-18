import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/screen/booking_list/booking_list.dart';
import 'package:hotel_booking_app/view/screen/chat/chat.dart';
import 'package:hotel_booking_app/view/screen/favorite/favorite.dart';
import 'package:hotel_booking_app/view/screen/home/home.dart';
import 'package:hotel_booking_app/view/screen/profile/profile.dart';
import 'package:light_bottom_navigation_bar/light_bottom_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  var screensList = [
    const Home(),
    const Favorite(),
    const BookingList(),
    const ChatPage(),
    const Profile(),
  ];
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: LightBottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: index,
        items: makeNavItems(),
        onSelected: (index) {
          setState(() {
            this.index = index;
          });
        },
      ),
      body: Center(child: screensList[index]),
    );
  }

  List<LightBottomNavigationBarItem> makeNavItems() {
    return [
      const LightBottomNavigationBarItem(
        unSelectedIcon: Icons.home_outlined,
        selectedIcon: Icons.home_outlined,
        size: 30,
        backgroundShadowColor: AppColor.primaryColor,
        borderBottomColor: AppColor.primaryColor,
        borderBottomWidth: 3,
        splashColor: AppColor.primaryColor,
        selectedIconColor: AppColor.primaryColor,
        unSelectedIconColor: Colors.grey,
      ),
      const LightBottomNavigationBarItem(
        unSelectedIcon: Icons.favorite_border,
        selectedIcon: Icons.favorite_border,
        size: 30,
        backgroundShadowColor: AppColor.primaryColor,
        borderBottomColor: AppColor.primaryColor,
        borderBottomWidth: 3,
        splashColor: AppColor.primaryColor,
        selectedIconColor: AppColor.primaryColor,
        unSelectedIconColor: Colors.grey,
      ),
      const LightBottomNavigationBarItem(
        unSelectedIcon: Icons.bookmark_outline_sharp,
        selectedIcon: Icons.bookmark_outline_sharp,
        size: 30,
        backgroundShadowColor: AppColor.primaryColor,
        borderBottomColor: AppColor.primaryColor,
        borderBottomWidth: 3,
        splashColor: AppColor.primaryColor,
        selectedIconColor: AppColor.primaryColor,
        unSelectedIconColor: Colors.grey,
      ),
      const LightBottomNavigationBarItem(
        unSelectedIcon: Icons.chat_outlined,
        selectedIcon: Icons.chat_outlined,
        size: 30,
        backgroundShadowColor: AppColor.primaryColor,
        borderBottomColor: AppColor.primaryColor,
        borderBottomWidth: 3,
        splashColor: AppColor.primaryColor,
        selectedIconColor: AppColor.primaryColor,
        unSelectedIconColor: Colors.grey,
      ),
      const LightBottomNavigationBarItem(
        unSelectedIcon: Icons.person_outline,
        selectedIcon: Icons.person_outline,
        size: 30,
        backgroundShadowColor: AppColor.primaryColor,
        borderBottomColor: AppColor.primaryColor,
        borderBottomWidth: 3,
        splashColor: AppColor.primaryColor,
        selectedIconColor: AppColor.primaryColor,
        unSelectedIconColor: Colors.grey,
      ),
    ];
  }
}
