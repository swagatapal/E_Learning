import 'package:flutter/material.dart';

import '../../../Core/Utils/Helper/app_colors.dart';

class CategoryItem extends StatelessWidget {
  final String text;

  const CategoryItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 20.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryButtonColor),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 12.0,
              color: Theme.of(context).colorScheme.onBackground,
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto'),
        ),
      ),
    );
  }
}
