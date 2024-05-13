import 'package:flutter/material.dart';

import '../../../Core/Utils/Helper/screen_utils.dart';

class CompletedSection extends StatelessWidget {
  const CompletedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: ScreenUtils().screenWidth(context),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/images/correctImg.png",
            height: 60,
            width: 60,
          ),
          Image.asset(
            "assets/images/congratsImg.png",
            height: 300,
            width: 250,
          ),
          Image.asset(
            "assets/images/congratsText.png",
            height: 100,
            width: 250,
          ),
        ],
      ),
    );
  }
}
