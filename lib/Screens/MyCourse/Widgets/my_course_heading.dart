import 'package:flutter/material.dart';

import '../../Notification/View/notification_screen.dart';

class MyCourseHeading extends StatelessWidget {
  const MyCourseHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: Row(
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
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationScreen(),
                ),
              );
            },
            child: Image.asset(
              "assets/images/notification.png",
              height: 30,
              width: 20,
            ),
          )
        ],
      ),
    );
  }
}
