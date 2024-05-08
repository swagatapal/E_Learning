import 'package:e_learning/Core/Utils/Helper/app_colors.dart';
import 'package:e_learning/Core/Utils/Helper/screen_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
      child: Container(
        width: ScreenUtils().screenWidth(context)*0.8,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15.0),
          ),
          color: AppColors.lightBackground,
          boxShadow: [
            BoxShadow(
              // color:  Colors.blueGrey.withOpacity(0.4),
                color: AppColors.colorSecondaryText2.withOpacity(0.2),
                offset: const Offset(0.0, 3.0),
                blurRadius: 8.0)
          ],
        ),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Theme.of(context).colorScheme.onBackground
                  ),
                  child: Image.asset(
                    "assets/images/correct_image.png",

                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Transaction Completed",
                          style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto",
                              fontSize: 16,
                              color: Theme.of(context).colorScheme.onBackground
                          ),
                        ),
                        const Text(
                          "Lorem ipsum dolor sit amet ",
                          style:  TextStyle(
                              color: AppColors.colorSecondaryText2,
                              fontFamily: "Roboto",
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const Text(
                      "8 minutes ago",
                      style:  TextStyle(
                          color: AppColors.colorSecondaryText2,
                          fontFamily: "Roboto",
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
              ),
            ],

        ),
      ),
    );
  }
}
