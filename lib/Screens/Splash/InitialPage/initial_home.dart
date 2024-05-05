
import 'package:e_learning/Screens/Auth/View/login_page.dart';
import 'package:e_learning/Screens/Splash/InitialPage/page_four.dart';
import 'package:e_learning/Screens/Auth/View/option_page.dart';
import 'package:e_learning/Screens/Splash/InitialPage/page_one.dart';
import 'package:e_learning/Screens/Splash/InitialPage/page_three.dart';
import 'package:e_learning/Screens/Splash/InitialPage/page_two.dart';
import 'package:e_learning/core/utils/helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../Core/Utils/CommonWidget/common_button.dart';


class InitialHome extends StatelessWidget {
  final _controller = PageController();

  InitialHome({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double containerWidth = screenSize.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: containerWidth * 0.7,
            child: PageView(
              controller: _controller,
              children: const [
                PageOne(),
                PageTwo(),
                PageThree(),
                PageFour(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: JumpingDotEffect(
              activeDotColor: Theme.of(context).colorScheme.onBackground,
              dotColor: AppColors.circleBackground,
              dotHeight: 15,
              dotWidth: 20,
              spacing: 10,
              //verticalOffset: 50,
              jumpScale: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: CommonButton(
              onClicked: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OptionPage(),
                  ),
                );
              },
              label: "CONTINUE",
              buttonHeight: containerWidth * 0.06,
              buttonWidth: containerWidth * 0.8,
              fontSize: 20,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LogIn(),
                ),
              );
      
            },
            child: Text(
              "SKIP",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.onBackground,
                  fontFamily: 'Roboto',
                  decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
