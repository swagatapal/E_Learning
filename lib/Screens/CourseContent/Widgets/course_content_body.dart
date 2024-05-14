import 'package:e_learning/Screens/CourseContent/Widgets/course_content_body_section.dart';
import 'package:flutter/material.dart';

import '../../../Core/Utils/Helper/app_colors.dart';

class CourseContentBody extends StatelessWidget {
  final String lectureHeading;

  const CourseContentBody({
    super.key,
    required this.lectureHeading,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            lectureHeading,
            style: const TextStyle(
                color: AppColors.primaryButtonColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto'),
          ),
        ),
        const SizedBox(height: 10.0),
        Flexible(
          child: Material(
            color: AppColors.courseContentBackgroundColor,
            child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return const CourseContentBodySection(
                      eachLectureHeading: "Legibility vs. Readability",
                      eachLectureContent:
                          "Legibility refers to the ease with which individual characters can be distinguished from one another, while readability is...");
                }),
          ),
        ),
      ],
    );
  }
}
