import 'package:e_learning/Core/Utils/Helper/screen_utils.dart';
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
                        Image.asset(
                          "assets/images/notification.png",
                          height: 30,
                          width: 20,
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
                        isVisible: false, headingName: "Continue Watching"),
                    SizedBox(
                      height: ScreenUtils().screenWidth(context) * 0.7,
                      child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return const ContinueWatchingItem();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    HomeHeadingText(isVisible: true, headingName: "Categories"),
                    SizedBox(
                      height: ScreenUtils().screenWidth(context) * 0.13,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return const CategoryItem();
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    HomeHeadingText(
                        isVisible: true, headingName: "Suggestions for You"),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: ScreenUtils().screenWidth(context) * 0.5,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return const SuggestionsItem();
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    HomeHeadingText(
                        isVisible: true, headingName: "Top Courses"),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: ScreenUtils().screenWidth(context) * 0.5,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return const SuggestionsItem();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
