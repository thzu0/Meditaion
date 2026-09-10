import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditaion_app/constans/constans.dart';

class BuildCategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final VoidCallback? press;
  const BuildCategoryCard({
    super.key,
    required this.svgSrc,
    required this.title,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(13.0),
      child: Container(
        // padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13.0),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0.0, 17.0),
              blurRadius: 17.0,
              spreadRadius: -23.0,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Spacer(),
                  SvgPicture.asset(svgSrc),
                  const Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'IranSans',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
