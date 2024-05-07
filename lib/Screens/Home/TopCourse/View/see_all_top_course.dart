import 'package:flutter/material.dart';

import '../../../../Core/Utils/Helper/screen_utils.dart';
import '../../Widgets/suggestions_item.dart';

class SeeAllTopCourse extends StatelessWidget {
  const SeeAllTopCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Top Courses")),
      body: SizedBox(
          height: ScreenUtils().screenWidth(context) * 4,
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(10, (index) {
              return const SuggestionsItem(
                image: 'assets/images/testImage1.png',
                title: 'Typography and Layout Design',
                subtitle: 'Visual Communication College',
                rating: '4.4',
              );
            }),
          )),
    );
  }
}
