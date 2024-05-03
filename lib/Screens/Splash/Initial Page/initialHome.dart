import 'package:e_learning/Screens/Splash/Initial%20Page/pageFour.dart';
import 'package:e_learning/Screens/Splash/Initial%20Page/pageOne.dart';
import 'package:e_learning/Screens/Splash/Initial%20Page/pageThree.dart';
import 'package:e_learning/Screens/Splash/Initial%20Page/pageTwo.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../Core/Utils/Common Widget/commonButton.dart';
import '../../../Core/Utils/Helper/appColors.dart';

class InitialHome extends StatelessWidget {
  final _controller = PageController();

  InitialHome({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double containerWidth = screenSize.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
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
            CommonButton(
              onClicked: () {},
              label: "Continue",
              buttonHeight: containerWidth * 0.06,
              buttonWidth: containerWidth * 0.8,
              fontSize: 20,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "skip",
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
      ),
    );
  }
}
