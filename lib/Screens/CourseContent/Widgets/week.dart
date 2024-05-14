import 'package:flutter/material.dart';
import '../../../Core/Utils/Helper/app_colors.dart';
import '../../../Core/Utils/Helper/screen_utils.dart';

class Week extends StatefulWidget {
  final String weekNo;

  const Week({super.key, required this.weekNo});

  @override
  State<Week> createState() => _WeekState();
}

class _WeekState extends State<Week> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtils().screenHeight(context) * 0.06,
      width: ScreenUtils().screenWidth(context) * 1.0,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: AppColors.primaryButtonColor,
              border: Border.all(color: AppColors.primaryButtonColor),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  widget.weekNo,
                  style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
