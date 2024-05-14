import 'package:e_learning/Core/Utils/Helper/app_colors.dart';
import 'package:e_learning/Core/Utils/Helper/screen_utils.dart';
import 'package:flutter/material.dart';

import '../../CommonWidgets/normal_text.dart';

class OverViewSection extends StatelessWidget {
  final String? hint;
  final InputBorder? inputBorder;

  const OverViewSection({super.key, this.hint, this.inputBorder});

  @override
  Widget build(BuildContext context) {
    double wid = ScreenUtils().screenWidth(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: ScreenUtils().screenWidth(context),
      // color: Colors.blue,
      child: Column(
        children: [
          Text(
            "Overview",
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onBackground),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "Course Name:",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.onBackground),
                  children: const <TextSpan>[
                    TextSpan(
                      text: '  Typography and Layout Design',
                      style: TextStyle(
                          color: AppColors.primaryButtonColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
              ),
              const CourseItem(
                image: "assets/images/lecture.png",
                leadingText: "50+ Lectures",
              ),
              const CourseItem(
                image: "assets/images/learning.png",
                leadingText: "4 Weeks",
              ),
              const CourseItem(
                image: "assets/images/certification.png",
                leadingText: "Online Certificate",
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Skills",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              const SizedBox(
                height: 15,
              ),
              Wrap(
                children: List<Widget>.generate(
                  5,
                  (int idx) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Chip(
                        label: NormalTextWidget(
                            text: "Dart css javascript",
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        padding: const EdgeInsets.symmetric(
                            vertical: 11, horizontal: 5),
                        backgroundColor: AppColors.primaryButtonColor,
                      ),
                    );
                  },
                ).toList(),
              ),
              SizedBox(
                height: wid * 0.2,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/money-dollar-circle-fill.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Price",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "35\$",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: ScreenUtils().screenWidth(context),
            height: 1,
            color: AppColors.primaryButtonColor,
          )
        ],
      ),
    );
  }
}

class CourseItem extends StatelessWidget {
  final String image;
  final String leadingText;

  const CourseItem({super.key, required this.image, required this.leadingText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15.0,
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 15,
            width: 15,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            leadingText,
            style: const TextStyle(
                color: AppColors.colorSecondaryText2,
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto'),
          ),
        ],
      ),
    );
  }
}
