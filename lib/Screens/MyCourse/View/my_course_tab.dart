import 'package:e_learning/Core/Utils/Helper/app_colors.dart';
import 'package:e_learning/Screens/Home/TopCourse/View/see_all_top_course.dart';
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
          body: Column(
            children: [
              const MyCourseHeading(),
              const SizedBox(height: 15),
              TabBar(
                controller: tabController,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                labelPadding: EdgeInsets.zero,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: const BoxDecoration(
                  color: AppColors.primaryButtonColor,
                  borderRadius:  BorderRadius.all(Radius.circular(30)),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
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
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const CompletedPage();
                        }),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            // backgroundColor: Colors.transparent.withOpacity(0.7),
            backgroundColor: AppColors.primaryButtonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SeeAllTopCourse(),
                ),
              );
            },
            label: const Text(
              'Explore More',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
          ),
        ),
      ),
    );
  }
}
