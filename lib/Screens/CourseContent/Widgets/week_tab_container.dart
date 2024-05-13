import 'package:flutter/material.dart';

import '../../../Core/Utils/Helper/app_colors.dart';

class WeekTabContainer extends StatelessWidget {
  final String categoryName;

  const WeekTabContainer({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryButtonColor),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        categoryName,
        style: const TextStyle(
            fontSize: 8.0, fontWeight: FontWeight.w500, fontFamily: 'Roboto'),
      ),
    );
  }
}
