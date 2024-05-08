import 'package:flutter/material.dart';

import '../../../Core/Utils/CommonWidget/common_initial_page.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CommonInitialPage(
        titleText: 'Embark on Your Learning Adventure',
        subtitleText:
            'Explore interactive lessons, quizzes, and multimedia content to enhance your understanding.',
        image: 'assets/images/p3.png',
      ),
    );
  }
}
