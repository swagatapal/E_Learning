import 'package:flutter/material.dart';

class MyCourseHeading extends StatelessWidget {
  const MyCourseHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "My Courses",
          style: TextStyle(
              color: Theme.of(context).colorScheme.onBackground,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto'),
        ),
        Image.asset(
          "assets/images/notification.png",
          height: 30,
          width: 20,
        )
      ],
    );
  }
}
