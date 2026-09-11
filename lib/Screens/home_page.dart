import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditaion_app/Screens/meditation_screen.dart';
import 'package:meditaion_app/widget/category_widget.dart';
import 'package:meditaion_app/widget/navbar_widget.dart';
import 'package:meditaion_app/widget/search_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BuildBottomaNavBar(),
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

                  BuildSearchBar(),

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
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const MeditationScreen();
                                },
                              ),
                            );
                          },
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

//
