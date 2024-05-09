import 'package:flutter/material.dart';

class CourseDetailsHeading extends StatelessWidget {
  const CourseDetailsHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/testImage4.png"),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/back_icon_white.png",
                height: 20,
                width: 20,
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Center(
                    child: Image.asset(
                      "assets/images/bookmark2.png",
                      height: 25,
                      width: 15,
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
