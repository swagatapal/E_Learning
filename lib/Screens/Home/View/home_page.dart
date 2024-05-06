import 'package:e_learning/Core/Utils/Helper/screen_utils.dart';
import 'package:e_learning/core/utils/helper/app_colors.dart';
import 'package:flutter/material.dart';

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
                            text: 'Sidara',
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
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
                const SizedBox(
                  height: 20,
                ),
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
                const SizedBox(
                  height: 20,
                ),
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
                  height: ScreenUtils().screenWidth(context) * 0.13,
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
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class HomeHeadingText extends StatelessWidget {
  bool isVisible = true;
  final String headingName;

  HomeHeadingText(
      {super.key, required this.isVisible, required this.headingName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headingName,
          style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              color: Theme.of(context).colorScheme.onBackground,
              fontWeight: FontWeight.w800),
        ),
        Visibility(
          visible: isVisible,
          child: const Text(
            "See All..",
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 10,
                color: AppColors.colorSecondaryText2,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}

class ContinueWatchingItem extends StatelessWidget {
  const ContinueWatchingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 0, left: 12, right: 12),
      child: Container(
        width: ScreenUtils().screenWidth(context),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15.0),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                // color:  Colors.blueGrey.withOpacity(0.4),
                color: AppColors.colorSecondaryText2.withOpacity(0.2),
                offset: const Offset(0.0, 3.0),
                blurRadius: 8.0)
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/testImage1.png",
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "UI/UX Design Essentials",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground),
                  ),
                  const Text(
                    "Tech Innovations University",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: AppColors.primaryButtonColor,
                        fontSize: 8,
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 14,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "4.7",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 10,
                            color: AppColors.primaryButtonColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: ScreenUtils().screenWidth(context) * 0.5,
                    child: LinearProgressIndicator(
                      value: 0.6,
                      backgroundColor: Colors.grey[300],
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Theme.of(context).colorScheme.onBackground),
                      borderRadius: BorderRadius.circular(10),
                      minHeight: 8,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "79% Completed",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 10,
                      color: AppColors.colorSecondaryText2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        left: 8.0,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.primaryButtonColor),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              "Graphic Design",
              style: TextStyle(
                  fontSize: 12.0,
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto'),
            ),
          ),
        ],
      ),
    );
  }
}

class SuggestionsItem extends StatelessWidget {
  const SuggestionsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtils().screenWidth(context) * 0.4,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              // color:  Colors.blueGrey.withOpacity(0.4),
              color: AppColors.colorSecondaryText2.withOpacity(0.2),
              offset: const Offset(0.0, 3.0),
              blurRadius: 8.0)
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/testImage1.png",
              height: 100,
              width: 150,
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "UI/UX Design Essentials",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground),
                ),
                const Text(
                  "Tech Innovations University",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      color: AppColors.primaryButtonColor,
                      fontSize: 8,
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "4.7",
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 10,
                          color: AppColors.primaryButtonColor),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
