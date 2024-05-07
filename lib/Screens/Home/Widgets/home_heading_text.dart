import 'package:flutter/material.dart';
import '../../../Core/Utils/Helper/app_colors.dart';

// ignore: must_be_immutable
class HomeHeadingText extends StatelessWidget {
  bool isVisible = true;
  final String headingName;
  final String? subHeadingName;
  final void Function()? onTap;

  HomeHeadingText({
    super.key,
    required this.isVisible,
    required this.headingName,
    this.subHeadingName,
    this.onTap,
  });

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
        InkWell(
          onTap: onTap,
          child: Text(
            subHeadingName ?? "",
            style: const TextStyle(
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
