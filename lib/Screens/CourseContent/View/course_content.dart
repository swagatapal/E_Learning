import 'package:e_learning/Screens/CourseContent/Widgets/course_content_heading.dart';
import 'package:flutter/material.dart';
import '../../../Core/Utils/Helper/app_colors.dart';
import '../Widgets/course_content_body.dart';
import '../Widgets/week.dart';

class CourseContent extends StatefulWidget {
  const CourseContent({super.key});

  @override
  State<CourseContent> createState() => _CourseContentState();
}

class _CourseContentState extends State<CourseContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          const CourseContentHeading(),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Typography and Layout Design",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto'),
                ),
                const Text(
                  "Visual Communication College",
                  style: TextStyle(
                      color: AppColors.primaryButtonColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto'),
                ),
              ],
            ),
          ),

          const SizedBox(height: 14.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Week(weekNo: 'Week 1'),
          ),
          const SizedBox(height: 20.0),
          const Center(
            child: Text(
              "Course Contents",
              style: TextStyle(
                  color: AppColors.primaryButtonColor,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto'),
            ),
          ),
          const SizedBox(height: 20.0),
          const CourseContentBody(
            lectureHeading: "Lecture 1: Principles of Typography",
          ),
          const SizedBox(height: 20.0),

          const CourseContentBody(
            lectureHeading: "Lecture 2: Typography in Design ",
          ),
          const SizedBox(height: 20.0),

          const CourseContentBody(
            lectureHeading: "Lecture 1: Principles of Typography",
          ),
          const SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
