import 'package:e_learning/Screens/CourseContent/Widgets/course_content_body_section.dart';
import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../../Core/Utils/Helper/app_colors.dart';

class CourseContentBody extends StatelessWidget {
  final String lectureHeading;
  final String eachLectureHeading;
  final String eachLectureContent;

  const CourseContentBody(
      {super.key,
      required this.lectureHeading,
      required this.eachLectureHeading,
      required this.eachLectureContent});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lectureHeading,
          style: const TextStyle(
              color: AppColors.primaryButtonColor,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto'),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              eachLectureHeading,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.onBackground),
            ),
            Text(
              eachLectureContent,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: AppColors.colorSecondaryText2,
                  fontFamily: "Roboto",
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }
}
