import 'package:e_learning/Core/Utils/Helper/app_colors.dart';
import 'package:flutter/material.dart';

class MyCourseTabContainer extends StatelessWidget {
  final String categoryName;

  const MyCourseTabContainer({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryButtonColor),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Text(
        categoryName,
        style: TextStyle(
            fontSize: 13.0,
            color: Theme.of(context).colorScheme.onBackground,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto'),
      ),
    );
  }
}
