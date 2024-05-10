import 'package:flutter/material.dart';

import '../../../Core/Utils/Helper/screen_utils.dart';

class CourseContentHeading extends StatelessWidget {
  const CourseContentHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: ScreenUtils().screenHeight(context) * 0.35,
            width: ScreenUtils().screenWidth(context),
            child: Image.asset(
              "assets/images/testImage4.png",
              fit: BoxFit.cover,
            )),
        Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  "assets/images/back_icon_white.png",
                  height: 20,
                  width: 20,
                ),
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
