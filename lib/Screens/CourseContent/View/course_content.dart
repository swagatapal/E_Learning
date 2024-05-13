import 'package:e_learning/Screens/CourseContent/Widgets/course_content_body.dart';
import 'package:e_learning/Screens/CourseContent/Widgets/course_content_heading.dart';
import 'package:e_learning/Screens/CourseContent/Widgets/week.dart';
import 'package:flutter/material.dart';
import '../../../Core/Utils/Helper/app_colors.dart';

class CourseContent extends StatefulWidget {
  const CourseContent({super.key});

  @override
  State<CourseContent> createState() => _CourseContentState();
}

class _CourseContentState extends State<CourseContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CourseContentHeading(),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
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
                const SizedBox(height: 14.0),
                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Week(weekNo: "Week 1"),
                //     Week(weekNo: "Week 2"),
                //     Week(weekNo: "Week 3"),
                //     Week(weekNo: "Week 4"),
                //   ],
                // ),
                const Week(),
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
                // const CourseContentBody(
                //   lectureHeading: "Lecture 1: Principles of Typography",
                //   eachLectureHeading: 'Legibility vs. Readability',
                //   eachLectureContent:
                //   'Legibility refers to the ease with which individual characters can be distinguished from one another, while readability is...',
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}