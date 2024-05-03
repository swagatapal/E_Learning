import 'package:flutter/material.dart';
import '../../../Core/Utils/Common Widget/commonInitialPage.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CommonInitialPage(
        titleText: 'Personalize Your Learning Path',
        subtitleText:
            'Customize your learning with progress tracking, and interactive activities.',
        image: 'assets/images/p1.png',
      ),
    );
  }
}
