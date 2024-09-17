import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_color.dart';
import 'package:hotel_booking_app/view/screen/home/home.dart';
import 'package:light_bottom_navigation_bar/light_bottom_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var screensList = [
    const Home(),
    const Text('Search'),
    const Text('Favorites'),
    const Text('Done'),
    const Text('Profile'),
  ];
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: LightBottomNavigationBar(
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
        unSelectedIconColor: AppColor.primaryColor,
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
        unSelectedIconColor: AppColor.primaryColor,
      ),
      const LightBottomNavigationBarItem(
        unSelectedIcon: Icons.sticky_note_2_outlined,
        selectedIcon: Icons.sticky_note_2_outlined,
        size: 30,
        backgroundShadowColor: AppColor.primaryColor,
        borderBottomColor: AppColor.primaryColor,
        borderBottomWidth: 3,
        splashColor: AppColor.primaryColor,
        selectedIconColor:AppColor.primaryColor,
        unSelectedIconColor: AppColor.primaryColor,
      ),
      const LightBottomNavigationBarItem(
        unSelectedIcon: Icons.done_outline_rounded,
        selectedIcon: Icons.done_outline_rounded,
        size: 30,
        backgroundShadowColor: Colors.green,
        borderBottomColor: Colors.green,
        borderBottomWidth: 3,
        splashColor: Colors.green,
        selectedIconColor: Colors.green,
        unSelectedIconColor: Colors.green,
      ),
      const LightBottomNavigationBarItem(
        unSelectedIcon: Icons.person_outline,
        selectedIcon: Icons.person_outline,
        size: 30,
        backgroundShadowColor: Colors.purpleAccent,
        borderBottomColor: Colors.purpleAccent,
        borderBottomWidth: 3,
        splashColor: Colors.purpleAccent,
        selectedIconColor: Colors.purpleAccent,
        unSelectedIconColor: Colors.purpleAccent,
      ),
    ];
  }
}