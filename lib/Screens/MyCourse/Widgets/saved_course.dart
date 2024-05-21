import 'package:e_learning/Core/Utils/CommonWidget/common_button.dart';
import 'package:e_learning/Core/Utils/Helper/app_colors.dart';
import 'package:e_learning/Core/Utils/Helper/screen_utils.dart';
import 'package:e_learning/Screens/CourseContent/View/course_content.dart';
import 'package:flutter/material.dart';

class SavedCourse extends StatefulWidget {
  const SavedCourse({super.key});

  @override
  State<SavedCourse> createState() => _SavedCourseState();
}

class _SavedCourseState extends State<SavedCourse> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CourseContent(),
            ),
          );
        },
        child: Container(
          width: ScreenUtils().screenWidth(context) * 0.8,
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
                  height: 107,
                  width: 95,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
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
                        "Visual Tech Innovations University College",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: AppColors.primaryButtonColor,
                            fontSize: 9,
                            fontWeight: FontWeight.w500),
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
                            "4.8",
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 10,
                                color: AppColors.primaryButtonColor),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "UI/UX Design Essentials course to learn the essential skills for designing intuitive and user-friendly interfaces...",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: AppColors.colorSecondaryText2,
                            fontSize: 8,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonButton(
                            buttonHeight:
                                ScreenUtils().screenWidth(context) * 0.08,
                            buttonWidth:
                                ScreenUtils().screenWidth(context) * 0.24,
                            label: "Enroll Now",
                            borderRadius: 8,
                            fontSize: 14,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/multi_person.png",
                                height: 30,
                                width: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "234",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primaryButtonColor),
                              )
                            ],
                          )
                        ],
                      ),
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
