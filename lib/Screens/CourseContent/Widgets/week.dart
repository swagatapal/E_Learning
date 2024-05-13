import 'package:flutter/material.dart';

import '../../../Core/Utils/Helper/app_colors.dart';
import '../../MyCourse/Widgets/my_course_tab_container.dart';

class Week extends StatefulWidget {
  // final String weekNo;

  const Week({super.key});

  @override
  State<Week> createState() => _WeekState();
}

class _WeekState extends State<Week> {
  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //     length: 4,
    //     child: TabBar(
    //       indicator: BoxDecoration(
    //         border: Border.all(color: AppColors.primaryButtonColor),
    //         borderRadius: BorderRadius.circular(8.0),
    //       ),
    //       padding: const EdgeInsets.all(8.0),
    //       tabs: const [
    //         Tab(
    //             child: Text(
    //           "Week 1",
    //           style: TextStyle(
    //               color: AppColors.primaryButtonColor,
    //               fontSize: 16.0,
    //               fontWeight: FontWeight.w400,
    //               fontFamily: 'Roboto'),
    //         )),
    //         Tab(
    //             child: Text(
    //           "Week 2",
    //           style: TextStyle(
    //               color: AppColors.primaryButtonColor,
    //               fontSize: 16.0,
    //               fontWeight: FontWeight.w400,
    //               fontFamily: 'Roboto'),
    //         )),
    //         Tab(
    //             child: Text(
    //           "Week 3",
    //           style: TextStyle(
    //               color: AppColors.primaryButtonColor,
    //               fontSize: 16.0,
    //               fontWeight: FontWeight.w400,
    //               fontFamily: 'Roboto'),
    //         )),
    //         Tab(
    //             child: Text(
    //           "Week 4",
    //           style: TextStyle(
    //               color: AppColors.primaryButtonColor,
    //               fontSize: 16.0,
    //               fontWeight: FontWeight.w400,
    //               fontFamily: 'Roboto'),
    //         )),
    //       ],
    //     ));
    return ListView.builder(
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, index) {
        return Container(
          // padding: const EdgeInsets.only(
          //     left: 8.0, right: 8.0, bottom: 8.0, top: 8.0),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryButtonColor),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Text(
            "Week 1",
            style: TextStyle(
                color: AppColors.primaryButtonColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto'),
          ),
        );
      },
    );
  }
}
