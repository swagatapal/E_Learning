import 'package:e_learning/Core/Utils/Helper/app_colors.dart';
import 'package:flutter/material.dart';

class CourseContentBodySection extends StatefulWidget {
  final String eachLectureHeading;
  final String eachLectureContent;

  const CourseContentBodySection(
      {super.key,
      required this.eachLectureHeading,
      required this.eachLectureContent});

  @override
  State<CourseContentBodySection> createState() =>
      _CourseContentBodySectionState();
}

class _CourseContentBodySectionState extends State<CourseContentBodySection> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 20.0, top: 15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.eachLectureHeading,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Roboto",
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.onBackground),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      widget.eachLectureContent,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: AppColors.colorSecondaryText2,
                          fontFamily: "Roboto",
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Icon(
                isChecked ? Icons.check_circle : Icons.check_circle_outline,
                color: AppColors.primaryButtonColor,
                size: 40.0,
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Container(
            height: 2,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          const SizedBox(height: 5.0),
        ],
      ),
    );
  }
}
