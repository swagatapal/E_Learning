import 'package:e_learning/Core/Utils/CommonWidget/common_button.dart';
import 'package:e_learning/Core/Utils/Helper/screen_utils.dart';
import 'package:e_learning/Screens/CourseDetails/Widgets/course_details_body.dart';
import 'package:e_learning/Screens/CourseDetails/Widgets/course_details_heading.dart';
import 'package:e_learning/Screens/Home/Home/Widgets/category_item.dart';
import 'package:e_learning/Screens/Payment/View/payment_overview.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../Core/Utils/Helper/app_colors.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    double wid = ScreenUtils().screenWidth(context);
    double hit = ScreenUtils().screenHeight(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CourseDetailsHeading(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Typography and Layout Design",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                  const Text(
                    "Visual Communication College",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Roboto'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/multi_person.png",
                            height: 25,
                            width: 15,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "3.4k students already enrolled",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w200,
                                color: AppColors.primaryButtonColor),
                          )
                        ],
                      ),
                      const Text(
                        "35\$",
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "Course Details",
                    style: TextStyle(
                        color: AppColors.primaryButtonColor,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  // RichText(
                  //   text: TextSpan(
                  //     text:
                  //         "Visual Communication College's Typography and Layout Design course explores the art and science of typography and layout composition. Learn how to effectively use typefaces, hierarchy, alignment, and grid systems to create visually compelling designs. Gain hands-on experience in editorial design, branding, and digital layouts",
                  //     style: const TextStyle(
                  //         color: AppColors.colorSecondaryText2,
                  //         fontSize: 13.0,
                  //         fontWeight: FontWeight.w300,
                  //         fontFamily: 'Roboto'),
                  //     children: <TextSpan>[
                  //       TextSpan(
                  //         text: ' Read More...',
                  //         style: TextStyle(
                  //             color: Theme.of(context).colorScheme.onBackground,
                  //             fontWeight: FontWeight.w600,
                  //             fontSize: 13.0,
                  //             fontFamily: 'Roboto'),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  const ReadMoreText(
                    "Visual Communication College's Typography and Layout Design course explores the art and science of typography and layout composition. Learn how to effectively use typefaces, hierarchy, alignment, and grid systems to create visually compelling designs. Gain hands-on experience in editorial design, branding, and digital layouts ",
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Read less',
                    colorClickableText: Colors.black,
                    moreStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const CourseDetailsBody(
                      image: "assets/images/lecture.png",
                      leadingText: "Lectures",
                      trailingText: "50+ Lectures"),
                  const CourseDetailsBody(
                      image: "assets/images/learning.png",
                      leadingText: "Learning Time",
                      trailingText: "4 Weeks"),
                  const CourseDetailsBody(
                      image: "assets/images/certification.png",
                      leadingText: "Certification",
                      trailingText: "Online Certificate"),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "Skills",
                    style: TextStyle(
                        color: AppColors.primaryButtonColor,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                  const Row(
                    children: [
                      CategoryItem(text: "Typography"),
                      CategoryItem(text: "Layout composition"),
                      CategoryItem(text: "Branding"),
                    ],
                  ),
                  const Row(
                    children: [
                      CategoryItem(text: "Visual communication"),
                      CategoryItem(text: "Editorial design"),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  CommonButton(
                    label: "ENROLL NOW",
                    onClicked: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaymentOverview()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Center(
                    child: Text(
                      "Start your 7-day free Trial",
                      style: TextStyle(
                          color: AppColors.colorSecondaryText2,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
