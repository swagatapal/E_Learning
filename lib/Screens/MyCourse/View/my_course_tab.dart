import 'package:e_learning/Screens/MyCourse/Widgets/completed_page.dart';
import 'package:e_learning/Screens/MyCourse/Widgets/in_progress.dart';
import 'package:e_learning/Screens/MyCourse/Widgets/my_course_heading.dart';
import 'package:e_learning/Screens/MyCourse/Widgets/my_course_tab_container.dart';
import 'package:e_learning/Screens/MyCourse/Widgets/saved_course.dart';
import 'package:flutter/material.dart';

class MyCourseTab extends StatefulWidget {
  const MyCourseTab({super.key});

  @override
  State<MyCourseTab> createState() => _MyCourseTabState();
}

class _MyCourseTabState extends State<MyCourseTab> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: MyCourseHeading(),
                ),
                TabBar(
                  labelPadding: EdgeInsets.zero,
                  labelColor: Colors.transparent,
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.transparent,
                  tabs: [
                    Tab(
                        child: MyCourseTabContainer(
                            categoryName: "Saved Courses")),
                    Tab(
                        child:
                            MyCourseTabContainer(categoryName: "In Progress")),
                    Tab(child: MyCourseTabContainer(categoryName: "Completed")),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      SavedCourse(),
                      InProgress(),
                      CompletedPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
