import 'package:flutter/material.dart';
import 'package:meditaion_app/widget/bottom_nav_items_widget.dart';

class BuildBottomaNavBar extends StatelessWidget {
  const BuildBottomaNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: 120.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BuildBottomNavItems(
            svgSrc: 'assets/icons/calendar.svg',
            title: 'امروز',
            isActive: false,
          ),
          BuildBottomNavItems(
            svgSrc: 'assets/icons/gym.svg',
            title: 'تمرینات',
            isActive: true,
          ),
          BuildBottomNavItems(
            svgSrc: 'assets/icons/Settings.svg',
            title: 'تنظیمات',
            isActive: false,
          ),
        ],
      ),
    );
  }
}
