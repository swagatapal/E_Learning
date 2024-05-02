import 'package:e_learning/Screens/Splash/initial%20page/pageOne.dart';
import 'package:e_learning/Screens/Splash/initial%20page/pageThree.dart';
import 'package:e_learning/Screens/Splash/initial%20page/pageTwo.dart';
import 'package:e_learning/Screens/Splash/initial%20page/pagefour.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InitialHome extends StatelessWidget {
  final _controller = PageController();
  InitialHome({super.key});


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double containerWidth = screenSize.height;
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: containerWidth*0.7,
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
              dotColor: Colors.deepPurple.shade100,
              dotHeight: 20,
              dotWidth: 30,
              spacing: 12,
              //verticalOffset: 50,
              jumpScale: 3,
            ),
          ),

          InkWell(
            onTap: (){},
            child: Text("skip", textAlign: TextAlign.center,style: TextStyle(fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onBackground,
                    fontFamily: 'Roboto',
                    decoration: TextDecoration.underline),),
          ),
        ],
    ),
    );
  }
}