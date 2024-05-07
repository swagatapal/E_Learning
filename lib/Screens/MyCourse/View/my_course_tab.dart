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

class _MyCourseTabState extends State<MyCourseTab>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              children: [
                const MyCourseHeading(),
                const SizedBox(height: 15),
                TabBar(
                  controller: tabController,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  labelPadding: EdgeInsets.zero,
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: false,
                  unselectedLabelStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.black),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.white),
                  indicator: const BoxDecoration(
                    color: Color(0xFF00707E),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  tabs: const [
                    Tab(
                        child:
                            MyCourseTabContainer(categoryName: "Saved Courses")),
                    Tab(child: MyCourseTabContainer(categoryName: "In Progress")),
                    Tab(child: MyCourseTabContainer(categoryName: "Completed")),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      ListView.builder(
                          itemCount: 9,
                          itemBuilder: (context, index) {
                            return const SavedCourse();
                          }),
                      ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return const InProgress();
                          }),
                      ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return const CompletedPage();
                          }),
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
