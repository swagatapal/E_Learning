import 'package:flutter/material.dart';

import '../../../Core/Utils/Helper/app_colors.dart';
import '../../../Core/Utils/Helper/screen_utils.dart';
import '../../Home/Home/Widgets/category_item.dart';
import '../View/payment_overview.dart';

class OverViewSection extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final String? hint;
  final InputBorder? inputBorder;

  const OverViewSection(
      {super.key, this.onChanged, this.hint, this.inputBorder});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: ScreenUtils().screenWidth(context),
      // color: Colors.blue,
      child: Column(
        children: [
          Text(
            "Overview",
            style: TextStyle(
                fontSize: 30,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onBackground),
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(
              text: "Course Name:",
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Skills",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              const Row(
                children: [
                  CategoryItem(text: "Typography"),
                  CategoryItem(text: "Layout composition"),
                ],
              ),
              const Row(
                children: [
                  CategoryItem(text: "Visual communication"),
                  CategoryItem(text: "Editorial design"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Image.asset(
                "assets/images/money-dollar-circle-fill.png",
                height: 30,
                width: 30,
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
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.onBackground,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "35\$",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.onBackground,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 1,
            color: AppColors.primaryButtonColor,
          )
        ],
      ),
      // TextField(
      //   onChanged: (v) => onChanged!(v),
      //   decoration: InputDecoration(hintText: hint!, border: inputBorder),
      // ),
    );
  }
}
