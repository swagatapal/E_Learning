import 'package:e_learning/Core/Utils/Helper/screen_utils.dart';
import 'package:e_learning/core/utils/helper/app_colors.dart';
import 'package:flutter/material.dart';

class ChatSection extends StatelessWidget {
  final String image;
  final String name;
  final String message;
  final String time;
  final int messageCount;

  const ChatSection(
      {super.key,
      required this.image,
      required this.name,
      required this.message,
      required this.time,
      required this.messageCount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style:  TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Roboto",
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.onBackground
                          ),
                      ),
                      Text(
                        message,
                        style: const TextStyle(
                          color: AppColors.colorSecondaryText2,
                          fontFamily: "Roboto",
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (messageCount > 0)
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color:AppColors.primaryButtonColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              messageCount.toString(),
                              style: const TextStyle(
                                color: Colors.white
                                ),
                            ),
                          ),
                        ),
                      Text(
                        time,
                        style: const TextStyle(
                          color: AppColors.colorSecondaryText2,
                          fontFamily: "Roboto",
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 1,
          width: ScreenUtils().screenWidth(context),
          color: AppColors.primaryButtonColor,
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
