import 'package:flutter/material.dart';
import 'package:meditaion_app/constans/constans.dart';

//

class BuildLessonCard extends StatelessWidget {
  final String lessonNumber;
  final bool isDone;
  final VoidCallback? press;

  const BuildLessonCard({
    super.key,
    required this.lessonNumber,
    this.isDone = false,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(13.0),
          child: Container(
            width: constraints.maxWidth / 2 - 10,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13.0),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 23.0,
                  spreadRadius: -13.0,

                  color: kShadowColor,
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        lessonNumber,
                        style: TextStyle(fontFamily: 'IranSans', fontSize: 14),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isDone ? kBlueColor : Colors.white,
                          border: Border.all(color: kBlueColor),
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: isDone ? Colors.white : kBlueColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
