import 'package:flutter/material.dart';

import '../../../Core/Utils/Helper/app_colors.dart';

class CourseDetailsBody extends StatelessWidget {
  final String image;
  final String leadingText;
  final String trailingText;

  const CourseDetailsBody(
      {super.key,
      required this.image,
      required this.leadingText,
      required this.trailingText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                image,
                height: 20,
                width: 15,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 10.0,),
              Text(
                leadingText,
                style: const TextStyle(
                    color: AppColors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto'),
              ),
            ],
          ),
          Text(
            trailingText,
            style: const TextStyle(
                color: AppColors.colorSecondaryText2,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto'),
          ),
        ],
      ),
    );
  }
}
