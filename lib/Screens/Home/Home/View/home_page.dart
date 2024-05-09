import 'package:e_learning/Core/Utils/Helper/screen_utils.dart';
import 'package:e_learning/Screens/CourseDetails/View/course_details.dart';
import 'package:e_learning/Screens/Home/Categories/View/see_all_categories.dart';
import 'package:e_learning/Screens/Home/SuggestionsForYou/View/see_all_suggestions.dart';
import 'package:e_learning/Screens/Home/TopCourse/View/see_all_top_course.dart';
import 'package:e_learning/Screens/Notification/View/notification_screen.dart';
import 'package:e_learning/core/utils/helper/app_colors.dart';
import 'package:flutter/material.dart';

import '../Widgets/category_item.dart';
import '../Widgets/continue_watching_item.dart';
import '../Widgets/home_heading_text.dart';
import '../Widgets/suggestions_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: 'Welcome',
                                  style: const TextStyle(
                                      color: AppColors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Roboto'),
                                  children: <TextSpan>[
                                TextSpan(
                                  text: ' Sidara',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      fontFamily: 'Roboto'),
                                ),
                              ])),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const NotificationScreen(),
                                ),
                              );
                            },
                            child: Image.asset(
                              "assets/images/notification.png",
                              height: 30,
                              width: 20,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          suffixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          contentPadding: const EdgeInsets.all(10.0),
                        ),
                      ),
                      const SizedBox(height: 20),
                      HomeHeadingText(
                        isVisible: false,
                        headingName: "Continue Watching",
                      ),
                      SizedBox(
                        height: ScreenUtils().screenWidth(context) * 0.7,
                        child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return ContinueWatchingItem(
                              image: 'assets/images/testImage1.png',
                              title: 'UI/UX Design Essentials',
                              subtitle: 'Tech Innovations University',
                              rating: '4.9',
                              percentageCompleted: '79% Completed',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const CourseDetails(),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: HomeHeadingText(
                        isVisible: true,
                        headingName: "Categories",
                        subHeadingName: "See All",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SeeAllCategories(),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtils().screenWidth(context) * 0.13,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return const CategoryItem(
                            text: 'Logitech Mouse',
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 10.0, right: 20.0),
                      child: HomeHeadingText(
                        isVisible: true,
                        headingName: "Suggestions for You",
                        subHeadingName: "See All",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SeeAllSuggestions(),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: ScreenUtils().screenWidth(context) * 0.5,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return SuggestionsItem(
                            image: 'assets/images/testImage1.png',
                            title: 'Branding and Identity Design',
                            subtitle: 'Innovation and Design School',
                            rating: '4.9',
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => const CourseDetails(),
                              //   ),
                              // );
                            },
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 10.0, right: 20.0),
                      child: HomeHeadingText(
                        isVisible: true,
                        headingName: "Top Courses",
                        subHeadingName: "See All",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SeeAllTopCourse(),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: ScreenUtils().screenWidth(context) * 0.5,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return const SuggestionsItem(
                            image: 'assets/images/testImage1.png',
                            title: 'Typography and Layout Design',
                            subtitle: 'Visual Communication College',
                            rating: '4.4',
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
