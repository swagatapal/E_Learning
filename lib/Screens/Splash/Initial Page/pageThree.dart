import 'package:e_learning/Core/Utils/Common%20Widget/commonInitialPage.dart';
import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CommonInitialPage(
        titleText: 'Engage with Expert Instructors',
        subtitleText:
            'Connect with knowledgeable tutors for personalized guidance.',
        image: 'assets/images/p2.png',
      ),
    );
  }
}
