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
  int _selectedWeek = 0;

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
                      fontSize: 21.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto'),
                ),
                const Text(
                  "Visual Communication College",
                  style: TextStyle(
                      color: AppColors.primaryButtonColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Week(
            weekNo: "Week ${_selectedWeek + 1}",
            onWeekSelected: (int week) {
              setState(() {
                _selectedWeek = week;
              });
            },
          ),
          const SizedBox(height: 20.0),
          Center(
            child: Text(
              "Course Contents",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto'),
            ),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: _buildContentForWeek(_selectedWeek),
          ),
        ],
      ),
    );
  }

  Widget _buildContentForWeek(int week) {
    switch (week) {
      case 0:
        return const Column(
          children: [
            CourseContentBody(
              lectureHeading: "Lecture 1: Principles of Typography",
            ),
            SizedBox(height: 20.0),
            CourseContentBody(
              lectureHeading: "Lecture 2: Typography in Design",
            ),
            SizedBox(height: 20.0),
          ],
        );
      case 1:
        return const Column(
          children: [
            CourseContentBody(
              lectureHeading: "Lecture 1: Advanced Typography",
            ),
            SizedBox(height: 20.0),
            CourseContentBody(
              lectureHeading: "Lecture 2: Modern Typography Trends",
            ),
            SizedBox(height: 20.0),
          ],
        );
      case 2:
        return const Column(
          children: [
            CourseContentBody(
              lectureHeading: "Lecture 1: History of Typography",
            ),
            SizedBox(height: 20.0),
            CourseContentBody(
              lectureHeading: "Lecture 2: Typography in Different Cultures",
            ),
            SizedBox(height: 20.0),
          ],
        );
      // Add more cases for other weeks
      default:
        return Container();
    }
  }
}
