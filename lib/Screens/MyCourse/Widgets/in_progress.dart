import 'package:e_learning/Core/Utils/Helper/app_colors.dart';
import 'package:e_learning/Core/Utils/Helper/screen_utils.dart';
import 'package:flutter/material.dart';

class InProgress extends StatefulWidget {
  const InProgress({super.key,});

  @override
  State<InProgress> createState() => _InProgressState();
}

class _InProgressState extends State<InProgress> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 0, left: 12, right: 12),
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15.0),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              // color:  Colors.blueGrey.withOpacity(0.4),
                color: AppColors.colorSecondaryText2.withOpacity(0.2),
                offset: const Offset(0.0, 3.0),
                blurRadius: 8.0)
          ],
        ),
        // child: Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Image.asset(
        //         "assets/images/testImage1.png",
        //         height: 100,
        //         width: 100,
        //         fit: BoxFit.cover,
        //       ),
        //       Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(
        //             "UI/UX Design Essentials",
        //             style: TextStyle(
        //                 fontFamily: 'Roboto',
        //                 fontSize: 14,
        //                 fontWeight: FontWeight.bold,
        //                 color: Theme.of(context).colorScheme.onBackground),
        //           ),
        //           const Text(
        //             "Visual Tech Innovations University College",
        //             style:  TextStyle(
        //                 fontFamily: 'Roboto',
        //                 color: AppColors.primaryButtonColor,
        //                 fontSize: 8,
        //                 fontWeight: FontWeight.w400),
        //           ),
        //
        //           Row(
        //             children: [
        //               Icon(
        //                 Icons.star,
        //                 size: 14,
        //                 color: Theme.of(context).colorScheme.onBackground,
        //               ),
        //               const SizedBox(
        //                 width: 5,
        //               ),
        //               Text(
        //                 "4.8",
        //                 style: const TextStyle(
        //                     fontFamily: 'Roboto',
        //                     fontSize: 10,
        //                     color: AppColors.primaryButtonColor),
        //               ),
        //             ],
        //           ),
        //           const SizedBox(height: 10),
        //           // const Text(
        //           //   "UI/UX Design Essentials course to learn the essential skills for designing intuitive and user-friendly interfaces...",
        //           //   style:  TextStyle(
        //           //       fontFamily: 'Roboto',
        //           //       color: AppColors.colorSecondaryText2,
        //           //       fontSize: 8,
        //           //       fontWeight: FontWeight.w400),
        //           // ),
        //           const SizedBox(height: 10),
        //           SizedBox(
        //             width: ScreenUtils().screenWidth(context) * 0.5,
        //             child: LinearProgressIndicator(
        //               value: 0.6,
        //               backgroundColor: Colors.grey[300],
        //               valueColor: AlwaysStoppedAnimation<Color>(
        //                   Theme.of(context).colorScheme.onBackground),
        //               borderRadius: BorderRadius.circular(10),
        //               minHeight: 8,
        //             ),
        //           ),
        //           const SizedBox(height: 5),
        //           Text(
        //             '79% Completed',
        //             style: const TextStyle(
        //               fontFamily: 'Roboto',
        //               fontSize: 10,
        //               color: AppColors.colorSecondaryText2,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
