import 'package:e_learning/Core/Utils/Helper/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    double wid = ScreenUtils().screenWidth(context);
    double hit = ScreenUtils().screenHeight(context);
    return SingleChildScrollView(
      child: Scaffold(
      
        body: Column(
          // children: [
          //   Stack(
          //     children: [
          //       Image.asset("assets/images/testImage4.png"),
          //       Padding(
          //         padding: const EdgeInsets.all(30.0),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Image.asset("assets/images/back_icon_white.png", height: 20, width: 20,),
          //             Container(
          //                   height: 30,
          //                   width: 30,
          //                   decoration: BoxDecoration(
          //                     color: Colors.transparent.withOpacity(0.1),
          //                     borderRadius:
          //                         const BorderRadius.all(Radius.circular(8)),
          //                   ),
          //                   child: Center(
          //                       child: Image.asset(
          //                     "assets/images/bookmark2.png",
          //                     height: 25,
          //                     width: 15,
          //                   )),
          //                 ),
          //           ],
          //         ),
          //       ),
            
          //     ],
          //   ),
          // ],
        ),
      
      ),
    );
  }
}