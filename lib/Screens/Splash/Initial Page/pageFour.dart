import 'package:flutter/material.dart';

import '../../../Core/Utils/Common Widget/commonInitialPage.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double containerWidth = screenSize.width;
    return const Scaffold(
      body: InitialPage(
        titleText: 'Personalize Your Learning Path',
        subtitleText:
            'Customize your learning with progress tracking, and interactive activities.',
        image: 'assets/images/p1.png',
      ),
    );
  }
}
