import 'package:flutter/material.dart';

import '../../../Core/Utils/Helper/app_colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        left: 8.0,
        right: 8.0,
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
