import 'package:e_learning/Core/Utils/Helper/app_colors.dart';
import 'package:flutter/material.dart';

class MyCourseTabContainer extends StatelessWidget {
  final String categoryName;
  const MyCourseTabContainer({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Row(
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
            categoryName,
            style: TextStyle(
                fontSize: 15.0,
                color: Theme.of(context).colorScheme.onBackground,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto'),
          ),
        ),
      ],
    );
  }
}
