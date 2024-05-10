import 'package:flutter/material.dart';

import '../../../Core/Utils/Helper/app_colors.dart';

class Week extends StatelessWidget {
  final String weekNo;

  const Week({super.key, required this.weekNo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: 8.0, right: 8.0, bottom: 8.0, top: 8.0),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryButtonColor),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        weekNo,
        style: const TextStyle(
            color: AppColors.primaryButtonColor,
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
            fontFamily: 'Roboto'),
      ),
    );
  }
}
