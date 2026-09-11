import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditaion_app/Screens/player_page.dart';
import 'package:meditaion_app/constans/constans.dart';
import 'package:meditaion_app/widget/bottom_nav_items_widget.dart';
import 'package:meditaion_app/widget/lesson_card_widget.dart';
import 'package:meditaion_app/widget/search_bar_widget.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

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
      ),

      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage('assets/images/meditation_bg.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: size.height * 0.05),
                    const Text(
                      'مدیتیشن',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Lalezar',
                        fontWeight: FontWeight.w900,
                        fontSize: 40.0,
                      ),
                    ),

                    const Text(
                      '20 دقیقه آموزش ',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Lalezar',
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'با استفاده از مدیتیشن قدرت بدنی و ذهنی خود را\nمیتونید خیلی افزایش دهید و عمر طولانی تری\nداشته باشید',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Vazirmatn',
                        fontWeight: FontWeight.w200,
                        fontSize: 17.0,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: size.width * 0.4,
                        height: 105,
                        child: const BuildSearchBar(),
                      ),
                    ),
                    Wrap(
                      spacing: 20.0,
                      runSpacing: 20.0,
                      children: [
                        BuildLessonCard(
                          lessonNumber: 'درس 01',
                          isDone: true,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyVideoPlayerPage(),
                              ),
                            );
                          },
                        ),
                        BuildLessonCard(lessonNumber: 'درس 03'),
                        BuildLessonCard(lessonNumber: 'درس 04'),
                        BuildLessonCard(lessonNumber: 'درس 02'),
                        BuildLessonCard(lessonNumber: 'درس 05'),
                        BuildLessonCard(lessonNumber: 'درس 06'),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      ' پیشنهادی ما',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Vazirmatn',
                        fontSize: 17.0,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20.0),
                      padding: EdgeInsets.all(10.0),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23.0,
                            spreadRadius: -13.0,

                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'یوگا پیشرفته',

                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Vazirmatn',
                                    fontSize: 15.0,
                                  ),
                                ),
                                Text(
                                  'پیشرفته تر از قبل تمرین کنید',

                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Vazirmatn',
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SvgPicture.asset(
                            'assets/icons/Meditation_women_small.svg',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
