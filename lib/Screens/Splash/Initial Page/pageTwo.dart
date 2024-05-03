import 'package:e_learning/Core/Utils/Common%20Widget/commonInitialPage.dart';
import 'package:flutter/material.dart';

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
