import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditaion_app/constans/constans.dart';
import 'package:meditaion_app/widget/bottom_nav_items_widget.dart';
import 'package:meditaion_app/widget/category_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Vazirmatn',
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
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
              svgSrc: 'assets/icons/calendar.svg',
              title: 'تمرینات',
              isActive: true,
            ),
            BuildBottomNavItems(
              svgSrc: 'assets/icons/calendar.svg',
              title: 'تنظیمات',
              isActive: false,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52.0,
                      width: 52.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 229, 182, 156),
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  Text(
                    'طاها عزیز , برای مدیتیشن \nآماده ایی ؟!',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Lalezar',
                      fontSize: 35.0,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30.0),
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 5.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: TextField(
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '. . . جستجو کنید',
                        hintStyle: const TextStyle(fontFamily: 'IranSans'),
                        icon: SvgPicture.asset('assets/icons/search.svg'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      childAspectRatio: 0.85,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                      children: [
                        BuildCategoryCard(
                          svgSrc: 'assets/icons/Hamburger.svg',
                          title: 'رژیم پیشنهادی',
                        ),
                        BuildCategoryCard(
                          svgSrc: 'assets/icons/Excrecises.svg',
                          title: 'نرمش',
                        ),
                        BuildCategoryCard(
                          svgSrc: 'assets/icons/Meditation.svg',
                          title: 'مدیتیشن',
                          press: () {},
                        ),
                        BuildCategoryCard(
                          svgSrc: 'assets/icons/yoga.svg',
                          title: 'یوگا',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
